
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct libusb20_device {int claimed_interface; } ;



int
usb_claim_interface(usb_dev_handle * dev, int interface)
{
 struct libusb20_device *pdev = (void *)dev;

 pdev->claimed_interface = interface;

 return (0);
}
