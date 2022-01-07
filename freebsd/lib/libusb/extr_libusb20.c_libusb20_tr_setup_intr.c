
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct libusb20_transfer {int nFrames; void* timeout; void** pLength; int * ppBuffer; } ;


 int libusb20_pass_ptr (void*) ;

void
libusb20_tr_setup_intr(struct libusb20_transfer *xfer, void *pBuf, uint32_t length, uint32_t timeout)
{
 xfer->ppBuffer[0] = libusb20_pass_ptr(pBuf);
 xfer->pLength[0] = length;
 xfer->timeout = timeout;
 xfer->nFrames = 1;
 return;
}
