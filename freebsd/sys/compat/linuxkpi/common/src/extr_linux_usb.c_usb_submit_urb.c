
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_host_endpoint {scalar_t__* bsd_xfer; int bsd_urb_list; } ;
struct urb {scalar_t__ kill_count; int status; struct usb_host_endpoint* endpoint; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EPERM ;
 int Giant ;
 int TAILQ_INSERT_TAIL (int *,struct urb*,int ) ;
 int bsd_urb_list ;
 int mtx_lock (int *) ;
 scalar_t__ mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (scalar_t__) ;

int
usb_submit_urb(struct urb *urb, uint16_t mem_flags)
{
 struct usb_host_endpoint *uhe;
 uint8_t do_unlock;
 int err;

 if (urb == ((void*)0))
  return (-EINVAL);

 do_unlock = mtx_owned(&Giant) ? 0 : 1;
 if (do_unlock)
  mtx_lock(&Giant);

 if (urb->endpoint == ((void*)0)) {
  err = -EINVAL;
  goto done;
 }







 if (urb->kill_count != 0) {
  err = -EPERM;
  goto done;
 }

 uhe = urb->endpoint;






 if (uhe->bsd_xfer[0] ||
     uhe->bsd_xfer[1]) {


  TAILQ_INSERT_TAIL(&uhe->bsd_urb_list, urb, bsd_urb_list);

  urb->status = -EINPROGRESS;

  usbd_transfer_start(uhe->bsd_xfer[0]);
  usbd_transfer_start(uhe->bsd_xfer[1]);
  err = 0;
 } else {

  urb->status = -EINVAL;
  err = -EINVAL;
 }
done:
 if (do_unlock)
  mtx_unlock(&Giant);
 return (err);
}
