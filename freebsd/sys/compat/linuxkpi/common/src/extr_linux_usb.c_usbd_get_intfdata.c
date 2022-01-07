
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {void* bsd_priv_sc; } ;



void *
usbd_get_intfdata(struct usb_interface *intf)
{
 return (intf->bsd_priv_sc);
}
