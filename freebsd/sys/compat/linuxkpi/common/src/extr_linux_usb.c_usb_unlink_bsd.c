
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_xfer {void* priv_fifo; } ;
struct urb {int dummy; } ;


 int Giant ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_drain (struct usb_xfer*) ;
 int usbd_transfer_pending (struct usb_xfer*) ;
 int usbd_transfer_start (struct usb_xfer*) ;
 int usbd_transfer_stop (struct usb_xfer*) ;

__attribute__((used)) static void
usb_unlink_bsd(struct usb_xfer *xfer,
    struct urb *urb, uint8_t drain)
{
 if (xfer == ((void*)0))
  return;
 if (!usbd_transfer_pending(xfer))
  return;
 if (xfer->priv_fifo == (void *)urb) {
  if (drain) {
   mtx_unlock(&Giant);
   usbd_transfer_drain(xfer);
   mtx_lock(&Giant);
  } else {
   usbd_transfer_stop(xfer);
  }
  usbd_transfer_start(xfer);
 }
}
