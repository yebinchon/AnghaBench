
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb_transfer {int * dev_handle; int endpoint; } ;
struct TYPE_2__ {int * tqe_prev; } ;
struct libusb_super_transfer {int state; TYPE_1__ entry; } ;
struct libusb_device {scalar_t__ device_is_gone; int ctx; int tr_head; } ;
struct libusb20_transfer {int dummy; } ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int DPRINTF (int ,int ,char*,...) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int LIBUSB_ERROR_BUSY ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_DEVICE ;
 int LIBUSB_ERROR_OTHER ;
 int LIBUSB_SUPER_XFER_ST_PEND ;
 int TAILQ_INSERT_TAIL (int *,struct libusb_super_transfer*,int ) ;
 int entry ;
 struct libusb20_transfer* libusb10_get_transfer (int *,int ,int) ;
 int libusb10_submit_transfer_sub (int *,int ) ;
 struct libusb_super_transfer* libusb20_tr_get_priv_sc1 (struct libusb20_transfer*) ;
 struct libusb_device* libusb_get_device (int *) ;

int
libusb_submit_transfer(struct libusb_transfer *uxfer)
{
 struct libusb20_transfer *pxfer0;
 struct libusb20_transfer *pxfer1;
 struct libusb_super_transfer *sxfer;
 struct libusb_device *dev;
 uint8_t endpoint;
 int err;

 if (uxfer == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (uxfer->dev_handle == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 endpoint = uxfer->endpoint;

 dev = libusb_get_device(uxfer->dev_handle);

 DPRINTF(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_submit_transfer enter");

 sxfer = (struct libusb_super_transfer *)(
     (uint8_t *)uxfer - sizeof(*sxfer));

 CTX_LOCK(dev->ctx);

 pxfer0 = libusb10_get_transfer(uxfer->dev_handle, endpoint, 0);
 pxfer1 = libusb10_get_transfer(uxfer->dev_handle, endpoint, 1);

 if (pxfer0 == ((void*)0) || pxfer1 == ((void*)0)) {
  err = LIBUSB_ERROR_OTHER;
 } else if ((sxfer->entry.tqe_prev != ((void*)0)) ||
     (libusb20_tr_get_priv_sc1(pxfer0) == sxfer) ||
     (libusb20_tr_get_priv_sc1(pxfer1) == sxfer)) {
  err = LIBUSB_ERROR_BUSY;
 } else if (dev->device_is_gone != 0) {
  err = LIBUSB_ERROR_NO_DEVICE;
 } else {


  sxfer->state = LIBUSB_SUPER_XFER_ST_PEND;


  TAILQ_INSERT_TAIL(&dev->tr_head, sxfer, entry);


  libusb10_submit_transfer_sub(
      uxfer->dev_handle, endpoint);

  err = 0;
 }

 CTX_UNLOCK(dev->ctx);

 DPRINTF(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_submit_transfer leave %d", err);

 return (err);
}
