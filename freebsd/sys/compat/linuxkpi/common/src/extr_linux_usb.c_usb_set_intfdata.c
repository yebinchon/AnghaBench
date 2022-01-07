
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {void* bsd_priv_sc; } ;



void
usb_set_intfdata(struct usb_interface *intf, void *data)
{
 intf->bsd_priv_sc = data;
}
