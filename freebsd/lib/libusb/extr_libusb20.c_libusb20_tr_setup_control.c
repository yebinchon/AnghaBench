
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct libusb20_transfer {int* pLength; int nFrames; void** ppBuffer; int timeout; } ;


 void* libusb20_pass_ptr (void*) ;

void
libusb20_tr_setup_control(struct libusb20_transfer *xfer, void *psetup, void *pBuf, uint32_t timeout)
{
 uint16_t len;

 xfer->ppBuffer[0] = libusb20_pass_ptr(psetup);
 xfer->pLength[0] = 8;
 xfer->timeout = timeout;

 len = ((uint8_t *)psetup)[6] | (((uint8_t *)psetup)[7] << 8);

 if (len != 0) {
  xfer->nFrames = 2;
  xfer->ppBuffer[1] = libusb20_pass_ptr(pBuf);
  xfer->pLength[1] = len;
 } else {
  xfer->nFrames = 1;
 }
 return;
}
