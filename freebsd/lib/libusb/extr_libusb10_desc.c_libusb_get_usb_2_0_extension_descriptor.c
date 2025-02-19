
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_usb_2_0_extension_descriptor {scalar_t__ bDevCapabilityType; int bmAttributes; int bDescriptorType; scalar_t__ bLength; } ;
struct libusb_context {int dummy; } ;
struct libusb_bos_dev_capability_descriptor {scalar_t__ bDevCapabilityType; scalar_t__ bLength; int* dev_capability_data; int bDescriptorType; } ;


 scalar_t__ LIBUSB_BT_USB_2_0_EXTENSION ;
 scalar_t__ LIBUSB_BT_USB_2_0_EXTENSION_SIZE ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_IO ;
 int LIBUSB_ERROR_NO_MEM ;
 struct libusb_usb_2_0_extension_descriptor* malloc (int) ;

int
libusb_get_usb_2_0_extension_descriptor(struct libusb_context *ctx,
    struct libusb_bos_dev_capability_descriptor *dev_cap,
    struct libusb_usb_2_0_extension_descriptor **usb_2_0_extension)
{
 struct libusb_usb_2_0_extension_descriptor *desc;

 if (dev_cap == ((void*)0) || usb_2_0_extension == ((void*)0) ||
     dev_cap->bDevCapabilityType != LIBUSB_BT_USB_2_0_EXTENSION)
  return (LIBUSB_ERROR_INVALID_PARAM);
 if (dev_cap->bLength < LIBUSB_BT_USB_2_0_EXTENSION_SIZE)
  return (LIBUSB_ERROR_IO);

 desc = malloc(sizeof(*desc));
 if (desc == ((void*)0))
  return (LIBUSB_ERROR_NO_MEM);

 desc->bLength = LIBUSB_BT_USB_2_0_EXTENSION_SIZE;
 desc->bDescriptorType = dev_cap->bDescriptorType;
 desc->bDevCapabilityType = dev_cap->bDevCapabilityType;
 desc->bmAttributes =
     (dev_cap->dev_capability_data[0]) |
     (dev_cap->dev_capability_data[1] << 8) |
     (dev_cap->dev_capability_data[2] << 16) |
     (dev_cap->dev_capability_data[3] << 24);

 *usb_2_0_extension = desc;
 return (0);
}
