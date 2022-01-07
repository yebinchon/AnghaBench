
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct usb_device {int dummy; } ;
struct libusb20_device {struct usb_device* privLuData; } ;



struct usb_device *
usb_device(usb_dev_handle * dev)
{
 struct libusb20_device *pdev;

 pdev = (void *)dev;

 return (pdev->privLuData);
}
