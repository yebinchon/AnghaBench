
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int mon ;
 int syslog (int ,char*) ;
 int udev ;
 int udev_monitor_enable_receiving (int ) ;
 int udev_monitor_filter_add_match_subsystem_devtype (int ,char*,int *) ;
 int udev_monitor_get_fd (int ) ;
 int udev_monitor_new_from_netlink (int ,char*) ;

__attribute__((used)) static int get_udev_fd(void)
{
 mon = udev_monitor_new_from_netlink(udev, "udev");
 if (!mon) {
  syslog(LOG_ERR, "udev monitoring failed\n");
  return -1;
 }

 udev_monitor_filter_add_match_subsystem_devtype(mon, "infiniband", ((void*)0));
 udev_monitor_enable_receiving(mon);
 return udev_monitor_get_fd(mon);
}
