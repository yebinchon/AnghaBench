
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_OTHER ;
 int libusb20_dev_detach_kernel_driver (struct libusb20_device*,int) ;

int
libusb_detach_kernel_driver(struct libusb20_device *pdev, int interface)
{
 int err;

 if (pdev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 err = libusb20_dev_detach_kernel_driver(
     pdev, interface);

 return (err ? LIBUSB_ERROR_OTHER : 0);
}
