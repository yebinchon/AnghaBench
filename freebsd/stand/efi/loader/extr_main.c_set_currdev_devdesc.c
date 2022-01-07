
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devdesc {int dummy; } ;


 char* efi_fmtdev (struct devdesc*) ;
 int printf (char*,char const*) ;
 int set_currdev (char const*) ;

__attribute__((used)) static void
set_currdev_devdesc(struct devdesc *currdev)
{
 const char *devname;

 devname = efi_fmtdev(currdev);
 printf("Setting currdev to %s\n", devname);
 set_currdev(devname);
}
