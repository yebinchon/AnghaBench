
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct libusb20_transfer {int * pLength; } ;



void
libusb20_tr_set_length(struct libusb20_transfer *xfer, uint32_t length, uint16_t frIndex)
{
 xfer->pLength[frIndex] = length;
 return;
}
