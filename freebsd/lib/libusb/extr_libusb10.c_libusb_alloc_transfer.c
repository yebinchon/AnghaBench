
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_transfer {int num_iso_packets; } ;
struct libusb_super_transfer {int dummy; } ;
typedef int libusb_iso_packet_descriptor ;


 struct libusb_super_transfer* malloc (int) ;
 int memset (struct libusb_super_transfer*,int ,int) ;

struct libusb_transfer *
libusb_alloc_transfer(int iso_packets)
{
 struct libusb_transfer *uxfer;
 struct libusb_super_transfer *sxfer;
 int len;

 len = sizeof(struct libusb_transfer) +
     sizeof(struct libusb_super_transfer) +
     (iso_packets * sizeof(libusb_iso_packet_descriptor));

 sxfer = malloc(len);
 if (sxfer == ((void*)0))
  return (((void*)0));

 memset(sxfer, 0, len);

 uxfer = (struct libusb_transfer *)(
     ((uint8_t *)sxfer) + sizeof(*sxfer));


 uxfer->num_iso_packets = iso_packets;

 return (uxfer);
}
