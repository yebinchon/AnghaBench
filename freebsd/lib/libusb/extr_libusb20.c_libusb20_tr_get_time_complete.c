
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct libusb20_transfer {int timeComplete; } ;



uint16_t
libusb20_tr_get_time_complete(struct libusb20_transfer *xfer)
{
 return (xfer->timeComplete);
}
