installpath="ubuntu-server";
read -p "MySQL Root Username: " mysqluser;
echo "MySQL Root Password:";
read -s mysqlpass;
DEBIAN_FRONTEND=noninteractive apt-get -yq install git;
git clone https://github.com/tribe-framework/ubuntu-server.git $installpath;
sed -i "s/mysql_root_user/$mysqluser/g" $installpath/server.sh;
sed -i "s/mysql_root_pass/$mysqlpass/g" $installpath/server.sh;
bash $installpath/server.sh;
rm $installpath -R;
rm install.sh;