
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {int * callback; } ;
typedef int libusb20_tr_callback_t ;



void
libusb20_tr_set_callback(struct libusb20_transfer *xfer, libusb20_tr_callback_t *cb)
{
 xfer->callback = cb;
 return;
}
