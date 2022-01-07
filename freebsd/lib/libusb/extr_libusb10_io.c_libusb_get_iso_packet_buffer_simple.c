
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {scalar_t__ num_iso_packets; TYPE_1__* iso_packet_desc; int * buffer; } ;
struct TYPE_2__ {int length; } ;



uint8_t *
libusb_get_iso_packet_buffer_simple(struct libusb_transfer *transfer, uint32_t off)
{
 uint8_t *ptr;

 if (transfer->num_iso_packets < 0)
  return (((void*)0));

 if (off >= (uint32_t)transfer->num_iso_packets)
  return (((void*)0));

 ptr = transfer->buffer;
 if (ptr == ((void*)0))
  return (((void*)0));

 ptr += transfer->iso_packet_desc[0].length * off;

 return (ptr);
}
