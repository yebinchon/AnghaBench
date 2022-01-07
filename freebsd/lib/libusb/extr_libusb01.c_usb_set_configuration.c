
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_dev_handle ;
typedef int uint8_t ;
struct TYPE_3__ {int bNumConfigurations; } ;
struct usb_device {TYPE_2__* config; TYPE_1__ descriptor; } ;
struct TYPE_4__ {int bConfigurationValue; } ;


 int libusb20_dev_set_config_index (void*,int) ;
 struct usb_device* usb_device (int *) ;

int
usb_set_configuration(usb_dev_handle * udev, int bConfigurationValue)
{
 struct usb_device *dev;
 int err;
 uint8_t i;






 if (bConfigurationValue == 0) {

  i = 255;
 } else {

  dev = usb_device(udev);


  if (dev->config == ((void*)0)) {
   return (-1);
  }
  for (i = 0;; i++) {
   if (i == dev->descriptor.bNumConfigurations) {

    return (-1);
   }
   if ((dev->config + i)->bConfigurationValue ==
       bConfigurationValue) {
    break;
   }
  }
 }

 err = libusb20_dev_set_config_index((void *)udev, i);

 if (err)
  return (-1);

 return (0);
}
