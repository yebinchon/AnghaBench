
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_interface {scalar_t__ num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;



struct usb_host_interface *
usb_altnum_to_altsetting(const struct usb_interface *intf, uint8_t alt_index)
{
 if (alt_index >= intf->num_altsetting) {
  return (((void*)0));
 }
 return (intf->altsetting + alt_index);
}
