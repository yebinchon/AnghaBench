
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_info {int dummy; } ;
struct libusb20_device {TYPE_1__* beMethods; } ;
struct TYPE_2__ {int (* dev_get_info ) (struct libusb20_device*,struct usb_device_info*) ;} ;


 int LIBUSB20_ERROR_INVALID_PARAM ;
 int stub1 (struct libusb20_device*,struct usb_device_info*) ;

int
libusb20_dev_get_info(struct libusb20_device *pdev,
    struct usb_device_info *pinfo)
{
 if (pinfo == ((void*)0))
  return (LIBUSB20_ERROR_INVALID_PARAM);

 return (pdev->beMethods->dev_get_info(pdev, pinfo));
}
