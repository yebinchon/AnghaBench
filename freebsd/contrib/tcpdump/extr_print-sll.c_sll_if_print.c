
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct sll_header {int const sll_protocol; } ;
struct pcap_pkthdr {int caplen; int len; } ;
struct TYPE_8__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ETHERMTU ;
 int ETHERTYPE_8021Q ;
 void* EXTRACT_16BITS (int const*) ;


 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int SLL_HDR_LEN ;
 scalar_t__ ethertype_print (TYPE_1__*,int,int const*,int,int,int *,int *) ;
 int ethertype_values ;
 int ieee8021q_tci_string (void*) ;
 int ipx_print (TYPE_1__*,int const*,int) ;
 int llc_print (TYPE_1__*,int const*,int,int,int *,int *) ;
 int sll_print (TYPE_1__*,struct sll_header const*,int) ;
 int tok2str (int ,char*,int) ;

u_int
sll_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 u_int caplen = h->caplen;
 u_int length = h->len;
 register const struct sll_header *sllp;
 u_short ether_type;
 int llc_hdrlen;
 u_int hdrlen;

 if (caplen < SLL_HDR_LEN) {





  ND_PRINT((ndo, "[|sll]"));
  return (caplen);
 }

 sllp = (const struct sll_header *)p;

 if (ndo->ndo_eflag)
  sll_print(ndo, sllp, length);




 length -= SLL_HDR_LEN;
 caplen -= SLL_HDR_LEN;
 p += SLL_HDR_LEN;
 hdrlen = SLL_HDR_LEN;

 ether_type = EXTRACT_16BITS(&sllp->sll_protocol);

recurse:




 if (ether_type <= ETHERMTU) {



  switch (ether_type) {

  case 128:



   ipx_print(ndo, p, length);
   break;

  case 129:




   llc_hdrlen = llc_print(ndo, p, length, caplen, ((void*)0), ((void*)0));
   if (llc_hdrlen < 0)
    goto unknown;
   hdrlen += llc_hdrlen;
   break;

  default:


  unknown:

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
   break;
  }
 } else if (ether_type == ETHERTYPE_8021Q) {




  if (caplen < 4) {
   ND_PRINT((ndo, "[|vlan]"));
   return (hdrlen + caplen);
  }
  if (length < 4) {
   ND_PRINT((ndo, "[|vlan]"));
   return (hdrlen + length);
  }
         if (ndo->ndo_eflag) {
          uint16_t tag = EXTRACT_16BITS(p);

   ND_PRINT((ndo, "%s, ", ieee8021q_tci_string(tag)));
  }

  ether_type = EXTRACT_16BITS(p + 2);
  if (ether_type <= ETHERMTU)
   ether_type = 129;
  if (!ndo->ndo_qflag) {
   ND_PRINT((ndo, "ethertype %s, ",
       tok2str(ethertype_values, "Unknown", ether_type)));
  }
  p += 4;
  length -= 4;
  caplen -= 4;
  hdrlen += 4;
  goto recurse;
 } else {
  if (ethertype_print(ndo, ether_type, p, length, caplen, ((void*)0), ((void*)0)) == 0) {

   if (!ndo->ndo_eflag)
    sll_print(ndo, sllp, length + SLL_HDR_LEN);
   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
  }
 }

 return (hdrlen);
}
