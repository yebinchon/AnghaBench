
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct libusb20_transfer {size_t aFrames; scalar_t__* pLength; } ;



uint32_t
libusb20_tr_get_actual_length(struct libusb20_transfer *xfer)
{
 uint32_t x;
 uint32_t actlen = 0;

 for (x = 0; x != xfer->aFrames; x++) {
  actlen += xfer->pLength[x];
 }
 return (actlen);
}
