
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {int (* callback ) (struct libusb20_transfer*) ;int status; scalar_t__ is_draining; scalar_t__ is_pending; scalar_t__ is_restart; } ;


 int LIBUSB20_TRANSFER_DRAINED ;
 int LIBUSB20_TRANSFER_START ;
 int stub1 (struct libusb20_transfer*) ;
 int stub2 (struct libusb20_transfer*) ;

void
libusb20_tr_callback_wrapper(struct libusb20_transfer *xfer)
{
 ;

repeat:

 if (!xfer->is_pending) {
  xfer->status = LIBUSB20_TRANSFER_START;
 } else {
  xfer->is_pending = 0;
 }

 xfer->callback(xfer);

 if (xfer->is_restart) {
  xfer->is_restart = 0;
  goto repeat;
 }
 if (xfer->is_draining &&
     (!xfer->is_pending)) {
  xfer->is_draining = 0;
  xfer->status = LIBUSB20_TRANSFER_DRAINED;
  xfer->callback(xfer);
 }
 return;
}
