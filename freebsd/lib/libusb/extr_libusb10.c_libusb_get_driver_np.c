
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;


 int libusb_get_driver (struct libusb20_device*,int,char*,int) ;

int
libusb_get_driver_np(struct libusb20_device *pdev, int interface,
    char *name, int namelen)
{
 return (libusb_get_driver(pdev, interface, name, namelen));
}
