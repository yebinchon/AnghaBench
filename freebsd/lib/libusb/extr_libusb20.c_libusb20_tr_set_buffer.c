
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct libusb20_transfer {int * ppBuffer; } ;


 int libusb20_pass_ptr (void*) ;

void
libusb20_tr_set_buffer(struct libusb20_transfer *xfer, void *buffer, uint16_t frIndex)
{
 xfer->ppBuffer[frIndex] = libusb20_pass_ptr(buffer);
 return;
}
