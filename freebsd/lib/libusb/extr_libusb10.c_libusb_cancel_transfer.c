
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb_transfer {int status; int endpoint; struct libusb_device_handle* dev_handle; } ;
struct TYPE_2__ {int * tqe_prev; } ;
struct libusb_super_transfer {scalar_t__ state; TYPE_1__ entry; } ;
struct libusb_device_handle {int dummy; } ;
struct libusb_device {scalar_t__ device_is_gone; int ctx; int tr_head; } ;
struct libusb20_transfer {int dummy; } ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int DPRINTF (int ,int ,char*) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NOT_FOUND ;
 scalar_t__ LIBUSB_SUPER_XFER_ST_PEND ;
 int LIBUSB_TRANSFER_CANCELLED ;
 int TAILQ_REMOVE (int *,struct libusb_super_transfer*,int ) ;
 int entry ;
 int libusb10_complete_transfer (struct libusb20_transfer*,struct libusb_super_transfer*,int ) ;
 struct libusb20_transfer* libusb10_get_transfer (struct libusb_device_handle*,int ,int) ;
 int libusb10_submit_transfer_sub (struct libusb_device_handle*,int ) ;
 int libusb10_wakeup_event_loop (int ) ;
 struct libusb_super_transfer* libusb20_tr_get_priv_sc1 (struct libusb20_transfer*) ;
 int libusb20_tr_set_priv_sc1 (struct libusb20_transfer*,int *) ;
 int libusb20_tr_stop (struct libusb20_transfer*) ;
 struct libusb_device* libusb_get_device (struct libusb_device_handle*) ;

int
libusb_cancel_transfer(struct libusb_transfer *uxfer)
{
 struct libusb20_transfer *pxfer0;
 struct libusb20_transfer *pxfer1;
 struct libusb_super_transfer *sxfer;
 struct libusb_device *dev;
 struct libusb_device_handle *devh;
 uint8_t endpoint;
 int retval;

 if (uxfer == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);


 if ((devh = uxfer->dev_handle) == ((void*)0))
  return (LIBUSB_ERROR_NOT_FOUND);

 endpoint = uxfer->endpoint;

 dev = libusb_get_device(devh);

 DPRINTF(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_cancel_transfer enter");

 sxfer = (struct libusb_super_transfer *)(
     (uint8_t *)uxfer - sizeof(*sxfer));

 retval = 0;

 CTX_LOCK(dev->ctx);

 pxfer0 = libusb10_get_transfer(devh, endpoint, 0);
 pxfer1 = libusb10_get_transfer(devh, endpoint, 1);

 if (sxfer->state != LIBUSB_SUPER_XFER_ST_PEND) {

  uxfer->status = LIBUSB_TRANSFER_CANCELLED;
  retval = LIBUSB_ERROR_NOT_FOUND;
 } else if (sxfer->entry.tqe_prev != ((void*)0)) {

  TAILQ_REMOVE(&dev->tr_head, sxfer, entry);
  sxfer->entry.tqe_prev = ((void*)0);
  libusb10_complete_transfer(((void*)0),
      sxfer, LIBUSB_TRANSFER_CANCELLED);

  libusb10_wakeup_event_loop(dev->ctx);
 } else if (pxfer0 == ((void*)0) || pxfer1 == ((void*)0)) {

  retval = LIBUSB_ERROR_NOT_FOUND;
 } else if (libusb20_tr_get_priv_sc1(pxfer0) == sxfer) {
  libusb10_complete_transfer(pxfer0,
      sxfer, LIBUSB_TRANSFER_CANCELLED);
  if (dev->device_is_gone != 0) {

   libusb20_tr_set_priv_sc1(pxfer0, ((void*)0));

   libusb10_wakeup_event_loop(dev->ctx);
  } else {
   libusb20_tr_stop(pxfer0);

   libusb10_submit_transfer_sub(devh, endpoint);
  }
 } else if (libusb20_tr_get_priv_sc1(pxfer1) == sxfer) {
  libusb10_complete_transfer(pxfer1,
      sxfer, LIBUSB_TRANSFER_CANCELLED);

  if (dev->device_is_gone != 0) {

   libusb20_tr_set_priv_sc1(pxfer1, ((void*)0));

   libusb10_wakeup_event_loop(dev->ctx);
  } else {
   libusb20_tr_stop(pxfer1);

   libusb10_submit_transfer_sub(devh, endpoint);
  }
 } else {

  retval = LIBUSB_ERROR_NOT_FOUND;
 }

 CTX_UNLOCK(dev->ctx);

 DPRINTF(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_cancel_transfer leave");

 return (retval);
}
