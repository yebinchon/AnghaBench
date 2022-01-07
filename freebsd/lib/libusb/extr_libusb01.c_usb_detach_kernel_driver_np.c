
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct libusb20_device {int dummy; } ;


 int libusb20_dev_detach_kernel_driver (struct libusb20_device*,int) ;

int
usb_detach_kernel_driver_np(usb_dev_handle * dev, int interface)
{
 struct libusb20_device *pdev;
 int err;

 pdev = (void *)dev;

 if (pdev == ((void*)0))
  return (-1);

 err = libusb20_dev_detach_kernel_driver(pdev, interface);
 if (err != 0)
  return (-1);

 return (0);
}
