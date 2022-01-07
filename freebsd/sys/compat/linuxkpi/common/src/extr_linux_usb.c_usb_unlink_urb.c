
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int usb_unlink_urb_sub (struct urb*,int ) ;

int
usb_unlink_urb(struct urb *urb)
{
 return (usb_unlink_urb_sub(urb, 0));
}
