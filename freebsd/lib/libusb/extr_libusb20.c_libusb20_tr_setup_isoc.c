
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct libusb20_transfer {size_t maxFrames; int * pLength; int * ppBuffer; } ;


 int libusb20_pass_ptr (void*) ;

void
libusb20_tr_setup_isoc(struct libusb20_transfer *xfer, void *pBuf, uint32_t length, uint16_t frIndex)
{
 if (frIndex >= xfer->maxFrames) {

  return;
 }
 xfer->ppBuffer[frIndex] = libusb20_pass_ptr(pBuf);
 xfer->pLength[frIndex] = length;
 return;
}
