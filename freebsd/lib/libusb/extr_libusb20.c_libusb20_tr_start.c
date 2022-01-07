
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {int is_restart; scalar_t__ is_cancel; scalar_t__ is_pending; int is_opened; } ;


 int libusb20_tr_callback_wrapper (struct libusb20_transfer*) ;

void
libusb20_tr_start(struct libusb20_transfer *xfer)
{
 if (!xfer->is_opened) {

  return;
 }
 if (xfer->is_pending) {
  if (xfer->is_cancel) {

   xfer->is_restart = 1;
  }

  return;
 }

 libusb20_tr_callback_wrapper(xfer);
 return;
}
