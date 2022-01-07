
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int memset (struct urb*,int ,int) ;

void
usb_init_urb(struct urb *urb)
{
 if (urb == ((void*)0)) {
  return;
 }
 memset(urb, 0, sizeof(*urb));
}
