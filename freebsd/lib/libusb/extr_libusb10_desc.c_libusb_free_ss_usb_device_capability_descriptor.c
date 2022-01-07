
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_ss_usb_device_capability_descriptor {int dummy; } ;


 int free (struct libusb_ss_usb_device_capability_descriptor*) ;

void
libusb_free_ss_usb_device_capability_descriptor(
    struct libusb_ss_usb_device_capability_descriptor *ss_usb_device_capability)
{

 free(ss_usb_device_capability);
}
