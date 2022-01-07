
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int LOG_INFO ;
 char* sys_dir ;
 int syslog (int ,char*) ;
 int udev ;
 scalar_t__ udev_get_sys_path (int ) ;
 int udev_log_fn ;
 int udev_new () ;
 int udev_set_log_fn (int ,int ) ;
 int udev_set_log_priority (int ,int ) ;

__attribute__((used)) static void setup_udev(void)
{
 udev = udev_new();
 if (!udev) {
  syslog(LOG_ERR, "udev_new failed\n");
  return;
 }

 udev_set_log_fn(udev, udev_log_fn);
 udev_set_log_priority(udev, LOG_INFO);



}
