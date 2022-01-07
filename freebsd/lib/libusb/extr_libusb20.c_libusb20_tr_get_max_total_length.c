
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct libusb20_transfer {int maxTotalLength; } ;



uint32_t
libusb20_tr_get_max_total_length(struct libusb20_transfer *xfer)
{
 return (xfer->maxTotalLength);
}
