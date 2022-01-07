
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int usb_unlink_urb_sub (struct urb*,int) ;

void
usb_kill_urb(struct urb *urb)
{
 usb_unlink_urb_sub(urb, 1);
}
