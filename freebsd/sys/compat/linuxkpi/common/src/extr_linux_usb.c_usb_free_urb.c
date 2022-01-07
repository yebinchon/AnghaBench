
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int cv_wait; } ;


 int M_USBDEV ;
 int cv_destroy (int *) ;
 int free (struct urb*,int ) ;
 int usb_kill_urb (struct urb*) ;

void
usb_free_urb(struct urb *urb)
{
 if (urb == ((void*)0)) {
  return;
 }

 usb_kill_urb(urb);


 cv_destroy(&urb->cv_wait);


 free(urb, M_USBDEV);
}
