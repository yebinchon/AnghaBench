
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;

int
libusb_attach_kernel_driver(struct libusb20_device *pdev, int interface)
{
 if (pdev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 return (0);
}
