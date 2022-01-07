
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_timeout_t ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct urb {int timeout; int transfer_flags; int status; scalar_t__ actual_length; int cv_wait; int * complete; } ;


 int Giant ;
 int URB_IS_SLEEPING ;
 int URB_WAIT_WAKEUP ;
 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 scalar_t__ mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int usb_linux_wait_complete ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int
usb_start_wait_urb(struct urb *urb, usb_timeout_t timeout, uint16_t *p_actlen)
{
 int err;
 uint8_t do_unlock;


 if (timeout == 0) {
  timeout = 1;
 }
 urb->complete = &usb_linux_wait_complete;
 urb->timeout = timeout;
 urb->transfer_flags |= URB_WAIT_WAKEUP;
 urb->transfer_flags &= ~URB_IS_SLEEPING;

 do_unlock = mtx_owned(&Giant) ? 0 : 1;
 if (do_unlock)
  mtx_lock(&Giant);
 err = usb_submit_urb(urb, 0);
 if (err)
  goto done;





 while (urb->transfer_flags & URB_WAIT_WAKEUP) {
  urb->transfer_flags |= URB_IS_SLEEPING;
  cv_wait(&urb->cv_wait, &Giant);
  urb->transfer_flags &= ~URB_IS_SLEEPING;
 }

 err = urb->status;

done:
 if (do_unlock)
  mtx_unlock(&Giant);
 if (p_actlen != ((void*)0)) {
  if (err)
   *p_actlen = 0;
  else
   *p_actlen = urb->actual_length;
 }
 return (err);
}
