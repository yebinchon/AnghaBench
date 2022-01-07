
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
typedef int uint8_t ;
struct libusb20_device {int claimed_interface; } ;


 int libusb20_dev_set_alt_index (void*,int ,int) ;

int
usb_set_altinterface(usb_dev_handle * dev, int alternate)
{
 struct libusb20_device *pdev = (void *)dev;
 int err;
 uint8_t iface;

 iface = pdev->claimed_interface;

 err = libusb20_dev_set_alt_index((void *)dev, iface, alternate);

 if (err)
  return (-1);

 return (0);
}
