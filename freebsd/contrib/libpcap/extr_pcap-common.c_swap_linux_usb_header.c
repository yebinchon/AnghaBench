
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_3__ usb_isodesc ;
typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ caplen; } ;
struct TYPE_5__ {scalar_t__ error_count; scalar_t__ numdesc; } ;
struct TYPE_6__ {TYPE_1__ iso; } ;
struct TYPE_8__ {scalar_t__ ts_usec; scalar_t__ status; scalar_t__ urb_len; scalar_t__ data_len; scalar_t__ transfer_type; scalar_t__ interval; scalar_t__ start_frame; scalar_t__ xfer_flags; scalar_t__ ndesc; TYPE_2__ s; void* ts_sec; int bus_id; void* id; } ;
typedef TYPE_4__ pcap_usb_header_mmapped ;
typedef scalar_t__ bpf_u_int32 ;


 void* SWAPLL (void*) ;
 void* SWAPLONG (scalar_t__) ;
 int SWAPSHORT (int ) ;
 scalar_t__ URB_ISOCHRONOUS ;

__attribute__((used)) static void
swap_linux_usb_header(const struct pcap_pkthdr *hdr, u_char *buf,
    int header_len_64_bytes)
{
 pcap_usb_header_mmapped *uhdr = (pcap_usb_header_mmapped *)buf;
 bpf_u_int32 offset = 0;
 offset += 8;
 if (hdr->caplen < offset)
  return;
 uhdr->id = SWAPLL(uhdr->id);

 offset += 4;

 offset += 2;
 if (hdr->caplen < offset)
  return;
 uhdr->bus_id = SWAPSHORT(uhdr->bus_id);

 offset += 2;

 offset += 8;
 if (hdr->caplen < offset)
  return;
 uhdr->ts_sec = SWAPLL(uhdr->ts_sec);

 offset += 4;
 if (hdr->caplen < offset)
  return;
 uhdr->ts_usec = SWAPLONG(uhdr->ts_usec);

 offset += 4;
 if (hdr->caplen < offset)
  return;
 uhdr->status = SWAPLONG(uhdr->status);

 offset += 4;
 if (hdr->caplen < offset)
  return;
 uhdr->urb_len = SWAPLONG(uhdr->urb_len);

 offset += 4;
 if (hdr->caplen < offset)
  return;
 uhdr->data_len = SWAPLONG(uhdr->data_len);

 if (uhdr->transfer_type == URB_ISOCHRONOUS) {
  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->s.iso.error_count = SWAPLONG(uhdr->s.iso.error_count);

  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->s.iso.numdesc = SWAPLONG(uhdr->s.iso.numdesc);
 } else
  offset += 8;
 if (header_len_64_bytes) {
  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->interval = SWAPLONG(uhdr->interval);

  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->start_frame = SWAPLONG(uhdr->start_frame);

  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->xfer_flags = SWAPLONG(uhdr->xfer_flags);

  offset += 4;
  if (hdr->caplen < offset)
   return;
  uhdr->ndesc = SWAPLONG(uhdr->ndesc);

  if (uhdr->transfer_type == URB_ISOCHRONOUS) {

   usb_isodesc *pisodesc;
   uint32_t i;

   pisodesc = (usb_isodesc *)(void *)(buf+offset);
   for (i = 0; i < uhdr->ndesc; i++) {
    offset += 4;
    if (hdr->caplen < offset)
     return;
    pisodesc->status = SWAPLONG(pisodesc->status);

    offset += 4;
    if (hdr->caplen < offset)
     return;
    pisodesc->offset = SWAPLONG(pisodesc->offset);

    offset += 4;
    if (hdr->caplen < offset)
     return;
    pisodesc->len = SWAPLONG(pisodesc->len);

    offset += 4;

    pisodesc++;
   }
  }
 }
}
