#!/bin/bash

echo -e "" > log.txt

##################### Adding repositories #####################
echo "Adding repositories...\n" | tee -a install.log
echo "   ...for desktop themes" | tee -a install.log
sudo add-apt-repository ppa:noobslab/themes -y >> install.log 2>>log.txt
sudo add-apt-repository ppa:numix/ppa -y >> install.log 2>>log.txt
sudo add-apt-repository ppa:ravefinity-project/ppa -y >> install.log 2>>log.txt
 
echo "   ...for jdk8" | tee -a install.log
sudo add-apt-repository ppa:webupd8team/java -y >> install.log 2>>log.txt


##################### Updating repositories ######################
echo "Updating repo list..." | tee -a install.log
sudo aptitude update >/dev/null 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\tnumix-icon-theme\t\t\tOK" | tee -a install.log
else
	echo -e "\tnumix-icon-theme\t\t\tFail" | tee -a install.log
fi


##################### Installing themes #####################
echo "Installing themes..." | tee -a install.log
sudo apt-get install -y numix-icon-theme numix-icon-theme-circle >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\tnumix-icon-theme\t\t\tOK" | tee -a install.log
else
	echo -e "\tnumix-icon-theme\t\t\tFail" | tee -a install.log
fi

sudo apt-get install -y radiance-flat-colors >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\tradiance-flat-colors\t\t\tOK" | tee -a install.log
else
	echo -e "\tradiance-flat-colors\t\t\tFail" | tee -a install.log
fi

sudo apt-get install -y ambiance-blackout-flat-colors >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\tambiance-blackout-flat-colors\t\t\tOK" | tee -a install.log
else
	echo -e "\tambiance-blackout-flat-colors\t\t\tFail" | tee -a install.log
fi

sudo apt-get install -y ambiance-flat-colors >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\tambiance-flat-colors\t\t\tOK"
else
	echo -e "\tambiance-flat-colors\t\t\tFail"
fi


##################### Install SublimeText #####################
echo -n "Installing SublimeText..." | tee -a install.log
sudo apt-get install -y sublime-text >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi


##################### Install Vim #####################
echo -n "Installing Vim..." | tee -a install.log
sudo apt-get install -y vim >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi


##################### Install htop #####################
echo -n "Installing htop..." | tee -a install.log
sudo apt-get install -y htop >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi


##################### Install GParted #####################
echo -n "Installing GParted..." | tee -a install.log
sudo apt-get install -y gparted >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi

##################### Install Clementine #####################
echo -n "Installing Clementine..." | tee -a install.log
sudo apt-get install -y clementine >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi


##################### Install SSH #####################
echo -n "Installing SSH..." | tee -a install.log
sudo apt-get install -y openssh-server >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi


##################### Install gufw (Firewall tool) #####################
echo -n "Installing gufw (Firewall)..." | tee -a install.log
sudo apt-get install -y gufw >> log.txt 2>>log.txt
if [ $? -eq 0 ]; then
	echo -e "\t\t\tOK" | tee -a install.log
else
	echo -e "\t\t\tFail" | tee -a install.log
fi

##################### Install LAMP #####################
#echo -n "Installing LAMP..." | tee -a install.log
#sudo apt-get install -y lamp-server^ >> log.txt 2>>log.txt
#if [ $? -eq 0 ]; then
#	echo -e "\t\t\tOK" | tee -a install.log
#else
#	echo -e "\t\t\tFail" | tee -a install.log
#fi


##################### Install jdk8 #####################
#echo -n "Installing jdk8..." | tee -a install.log
#sudo apt-get install -y oracle-java8-installer >> log.txt 2>>log.txt
#if [ $? -eq 0 ]; then
#	echo -e "\t\t\tOK" | tee -a install.log
#else
#	echo -e "\t\t\tFail" | tee -a install.log
#fi
