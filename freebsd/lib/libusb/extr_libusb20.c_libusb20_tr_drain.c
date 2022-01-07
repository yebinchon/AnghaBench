
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {int is_draining; scalar_t__ is_pending; int is_opened; } ;


 int libusb20_tr_stop (struct libusb20_transfer*) ;

void
libusb20_tr_drain(struct libusb20_transfer *xfer)
{
 if (!xfer->is_opened) {

  return;
 }

 libusb20_tr_stop(xfer);

 if (xfer->is_pending) {
  xfer->is_draining = 1;
 }
 return;
}
