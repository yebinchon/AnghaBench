
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_transfer {int flags; struct libusb_super_transfer* buffer; } ;
struct libusb_super_transfer {int dummy; } ;


 int LIBUSB_TRANSFER_FREE_BUFFER ;
 int free (struct libusb_super_transfer*) ;

void
libusb_free_transfer(struct libusb_transfer *uxfer)
{
 struct libusb_super_transfer *sxfer;

 if (uxfer == ((void*)0))
  return;


 if (uxfer->flags & LIBUSB_TRANSFER_FREE_BUFFER)
  free(uxfer->buffer);

 sxfer = (struct libusb_super_transfer *)(
     (uint8_t *)uxfer - sizeof(*sxfer));

 free(sxfer);
}
