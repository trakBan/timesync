if [[ $EUID -ne 0 ]]; then
   echo "Uninstall script must be run as root" 
   exit 1
fi

rm /usr/bin/timesync

timesync >/dev/null 2>&1 || echo "timesync has been succesfuly uninstalled"
