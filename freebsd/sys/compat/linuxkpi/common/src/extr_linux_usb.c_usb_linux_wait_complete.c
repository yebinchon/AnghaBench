
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; int cv_wait; } ;


 int URB_IS_SLEEPING ;
 int URB_WAIT_WAKEUP ;
 int cv_signal (int *) ;

__attribute__((used)) static void
usb_linux_wait_complete(struct urb *urb)
{
 if (urb->transfer_flags & URB_IS_SLEEPING) {
  cv_signal(&urb->cv_wait);
 }
 urb->transfer_flags &= ~URB_WAIT_WAKEUP;
}
