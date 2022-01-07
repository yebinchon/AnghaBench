
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int LOG_INFO ;
 int mon ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int syslog (int ,char*,int ,char const*,char const*) ;
 char* udev_device_get_action (struct udev_device*) ;
 int udev_device_get_subsystem (struct udev_device*) ;
 char* udev_device_get_sysname (struct udev_device*) ;
 int udev_device_unref (struct udev_device*) ;
 struct udev_device* udev_monitor_receive_device (int ) ;
 int update_node_desc (char const*,char const*,int) ;

__attribute__((used)) static void process_udev_event(int ud_fd, const char *hostname)
{
 struct udev_device *dev;

 dev = udev_monitor_receive_device(mon);
 if (dev) {
  const char *device = udev_device_get_sysname(dev);
  const char *action = udev_device_get_action(dev);

  syslog(LOG_INFO, "Device event: %s, %s, %s\n",
   udev_device_get_subsystem(dev),
   device, action);

  if (device && action
      && strncmp(action, "add", sizeof("add")) == 0)
   update_node_desc(device, hostname, 1);

  udev_device_unref(dev);
 }
}
