
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_attach_arg {int dummy; } ;
typedef int device_t ;


 struct usb_attach_arg* device_get_ivars (int ) ;
 struct usb_attach_arg umass_uaa ;

__attribute__((used)) static int
umass_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 umass_uaa = *uaa;
 return (0);
}
