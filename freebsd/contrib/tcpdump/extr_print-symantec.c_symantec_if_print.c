
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_int ;
typedef int u_char ;
struct symantec_header {int ether_type; } ;
struct pcap_pkthdr {int len; int caplen; } ;
struct TYPE_6__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ ETHERMTU ;
 scalar_t__ EXTRACT_16BITS (int *) ;
 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ ethertype_print (TYPE_1__*,scalar_t__,int const*,int,int,int *,int *) ;
 int symantec_hdr_print (TYPE_1__*,int const*,int) ;

u_int
symantec_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 u_int length = h->len;
 u_int caplen = h->caplen;
 const struct symantec_header *sp;
 u_short ether_type;

 if (caplen < sizeof (struct symantec_header)) {
  ND_PRINT((ndo, "[|symantec]"));
  return caplen;
 }

 if (ndo->ndo_eflag)
  symantec_hdr_print(ndo, p, length);

 length -= sizeof (struct symantec_header);
 caplen -= sizeof (struct symantec_header);
 sp = (const struct symantec_header *)p;
 p += sizeof (struct symantec_header);

 ether_type = EXTRACT_16BITS(&sp->ether_type);

 if (ether_type <= ETHERMTU) {

  if (!ndo->ndo_eflag)
   symantec_hdr_print(ndo, (const u_char *)sp, length + sizeof (struct symantec_header));

  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 } else if (ethertype_print(ndo, ether_type, p, length, caplen, ((void*)0), ((void*)0)) == 0) {

  if (!ndo->ndo_eflag)
   symantec_hdr_print(ndo, (const u_char *)sp, length + sizeof (struct symantec_header));

  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 }

 return (sizeof (struct symantec_header));
}
