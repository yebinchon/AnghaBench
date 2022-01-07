
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct lladdr_info {void* addr_string; int addr; } ;
struct firewire_header {int firewire_dhost; int firewire_shost; int firewire_type; } ;
struct TYPE_6__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 scalar_t__ FIREWIRE_HDRLEN ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 int ap1394_hdr_print (TYPE_1__*,int const*,scalar_t__) ;
 scalar_t__ ethertype_print (TYPE_1__*,int ,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;
 void* fwaddr_string ;

u_int
ap1394_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 u_int length = h->len;
 u_int caplen = h->caplen;
 const struct firewire_header *fp;
 u_short ether_type;
 struct lladdr_info src, dst;

 if (caplen < FIREWIRE_HDRLEN) {
  ND_PRINT((ndo, "[|ap1394]"));
  return FIREWIRE_HDRLEN;
 }

 if (ndo->ndo_eflag)
  ap1394_hdr_print(ndo, p, length);

 length -= FIREWIRE_HDRLEN;
 caplen -= FIREWIRE_HDRLEN;
 fp = (const struct firewire_header *)p;
 p += FIREWIRE_HDRLEN;

 ether_type = EXTRACT_16BITS(&fp->firewire_type);
 src.addr = fp->firewire_shost;
 src.addr_string = fwaddr_string;
 dst.addr = fp->firewire_dhost;
 dst.addr_string = fwaddr_string;
 if (ethertype_print(ndo, ether_type, p, length, caplen, &src, &dst) == 0) {

  if (!ndo->ndo_eflag)
   ap1394_hdr_print(ndo, (const u_char *)fp, length + FIREWIRE_HDRLEN);

  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 }

 return FIREWIRE_HDRLEN;
}
