
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_transfer {int status; } ;



uint8_t
libusb20_tr_get_status(struct libusb20_transfer *xfer)
{
 return (xfer->status);
}
