
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 scalar_t__ libusb20_dev_kernel_driver_active (struct libusb20_device*,int) ;

int
libusb_kernel_driver_active(struct libusb20_device *pdev, int interface)
{
 if (pdev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (libusb20_dev_kernel_driver_active(pdev, interface))
  return (0);
 else
  return (1);
}
