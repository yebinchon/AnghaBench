
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;
typedef int libusb_device ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_DEVICE ;
 int libusb20_dev_check_connected (struct libusb20_device*) ;
 int * libusb_get_device (struct libusb20_device*) ;

int
libusb_check_connected(struct libusb20_device *pdev)
{
 libusb_device *dev;
 int err;

 dev = libusb_get_device(pdev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 err = libusb20_dev_check_connected(pdev);

 return (err ? LIBUSB_ERROR_NO_DEVICE : 0);
}
