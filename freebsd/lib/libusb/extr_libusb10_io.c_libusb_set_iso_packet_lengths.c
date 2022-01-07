
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct libusb_transfer {int num_iso_packets; TYPE_1__* iso_packet_desc; } ;
struct TYPE_2__ {int length; } ;



void
libusb_set_iso_packet_lengths(struct libusb_transfer *transfer, uint32_t length)
{
 int n;

 if (transfer->num_iso_packets < 0)
  return;

 for (n = 0; n != transfer->num_iso_packets; n++)
  transfer->iso_packet_desc[n].length = length;
}
