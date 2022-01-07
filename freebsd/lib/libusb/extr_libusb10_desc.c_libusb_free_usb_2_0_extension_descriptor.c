
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_usb_2_0_extension_descriptor {int dummy; } ;


 int free (struct libusb_usb_2_0_extension_descriptor*) ;

void
libusb_free_usb_2_0_extension_descriptor(
    struct libusb_usb_2_0_extension_descriptor *usb_2_0_extension)
{

 free(usb_2_0_extension);
}
