
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct libusb20_transfer {scalar_t__ maxFrames; scalar_t__ nFrames; } ;



void
libusb20_tr_set_total_frames(struct libusb20_transfer *xfer, uint32_t nFrames)
{
 if (nFrames > xfer->maxFrames) {

  nFrames = xfer->maxFrames;
 }
 xfer->nFrames = nFrames;
 return;
}
