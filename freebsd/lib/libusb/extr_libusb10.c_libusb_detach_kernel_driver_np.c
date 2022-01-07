
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;


 int libusb_detach_kernel_driver (struct libusb20_device*,int) ;

int
libusb_detach_kernel_driver_np(struct libusb20_device *pdev, int interface)
{
 return (libusb_detach_kernel_driver(pdev, interface));
}
