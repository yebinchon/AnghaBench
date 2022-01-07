
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct libusb20_device {int dummy; } ;


 int libusb20_dev_get_iface_desc (struct libusb20_device*,int,char*,int) ;
 char* strstr (char*,char*) ;

int
usb_get_driver_np(usb_dev_handle * dev, int interface, char *name, int namelen)
{
 struct libusb20_device *pdev;
 char *ptr;
 int err;

 pdev = (void *)dev;

 if (pdev == ((void*)0))
  return (-1);
 if (namelen < 1)
  return (-1);
 if (namelen > 255)
  namelen = 255;

 err = libusb20_dev_get_iface_desc(pdev, interface, name, namelen);
 if (err != 0)
  return (-1);


 ptr = strstr(name, ":");
 if (ptr != ((void*)0))
  *ptr = 0;

 return (0);
}
