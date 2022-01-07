
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;
struct urb {int (* complete ) (struct urb*) ;} ;


 int stub1 (struct urb*) ;
 struct urb* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_priv (struct usb_xfer*,int *) ;

__attribute__((used)) static void
usb_linux_complete(struct usb_xfer *xfer)
{
 struct urb *urb;

 urb = usbd_xfer_get_priv(xfer);
 usbd_xfer_set_priv(xfer, ((void*)0));
 if (urb->complete) {
  (urb->complete) (urb);
 }
}
