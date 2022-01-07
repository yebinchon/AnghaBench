
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int USB_MAX_FULL_SPEED_ISOC_FRAMES ;
 int USB_MAX_HIGH_SPEED_ISOC_FRAMES ;


 int usbd_get_speed (struct usb_device*) ;

__attribute__((used)) static uint16_t
usb_max_isoc_frames(struct usb_device *dev)
{
 ;
 switch (usbd_get_speed(dev)) {
 case 128:
 case 129:
  return (USB_MAX_FULL_SPEED_ISOC_FRAMES);
 default:
  return (USB_MAX_HIGH_SPEED_ISOC_FRAMES);
 }
}
