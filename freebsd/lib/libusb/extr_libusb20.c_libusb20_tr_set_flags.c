
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_transfer {int flags; } ;



void
libusb20_tr_set_flags(struct libusb20_transfer *xfer, uint8_t flags)
{
 xfer->flags = flags;
 return;
}
