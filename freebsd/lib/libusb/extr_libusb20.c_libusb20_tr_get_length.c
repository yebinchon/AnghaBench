
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct libusb20_transfer {int * pLength; } ;



uint32_t
libusb20_tr_get_length(struct libusb20_transfer *xfer, uint16_t frIndex)
{
 return (xfer->pLength[frIndex]);
}
