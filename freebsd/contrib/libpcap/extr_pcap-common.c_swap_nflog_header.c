
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct TYPE_3__ {int tlv_type; int tlv_length; } ;
typedef TYPE_1__ nflog_tlv_t ;
struct TYPE_4__ {scalar_t__ nflog_version; } ;
typedef TYPE_2__ nflog_hdr_t ;


 void* SWAPSHORT (int) ;

__attribute__((used)) static void
swap_nflog_header(const struct pcap_pkthdr *hdr, u_char *buf)
{
 u_char *p = buf;
 nflog_hdr_t *nfhdr = (nflog_hdr_t *)buf;
 nflog_tlv_t *tlv;
 u_int caplen = hdr->caplen;
 u_int length = hdr->len;
 uint16_t size;

 if (caplen < (u_int) sizeof(nflog_hdr_t) ||
     length < (u_int) sizeof(nflog_hdr_t)) {

  return;
 }

 if (nfhdr->nflog_version != 0) {

  return;
 }

 length -= sizeof(nflog_hdr_t);
 caplen -= sizeof(nflog_hdr_t);
 p += sizeof(nflog_hdr_t);

 while (caplen >= sizeof(nflog_tlv_t)) {
  tlv = (nflog_tlv_t *) p;


  tlv->tlv_type = SWAPSHORT(tlv->tlv_type);
  tlv->tlv_length = SWAPSHORT(tlv->tlv_length);


  size = tlv->tlv_length;
  if (size % 4 != 0)
   size += 4 - size % 4;


  if (size < sizeof(nflog_tlv_t)) {

   return;
  }


  if (caplen < size || length < size) {

   return;
  }


  length -= size;
  caplen -= size;
  p += size;
 }
}
