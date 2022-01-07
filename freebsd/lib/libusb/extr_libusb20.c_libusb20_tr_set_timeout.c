
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct libusb20_transfer {int timeout; } ;



void
libusb20_tr_set_timeout(struct libusb20_transfer *xfer, uint32_t timeout)
{
 xfer->timeout = timeout;
 return;
}
