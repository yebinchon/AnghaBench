
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {int dummy; } ;
struct libusb_super_transfer {int stream_id; } ;



void
libusb_transfer_set_stream_id(struct libusb_transfer *transfer, uint32_t stream_id)
{
 struct libusb_super_transfer *sxfer;

 if (transfer == ((void*)0))
  return;

 sxfer = (struct libusb_super_transfer *)(
     ((uint8_t *)transfer) - sizeof(*sxfer));


 sxfer->stream_id = stream_id;
}
