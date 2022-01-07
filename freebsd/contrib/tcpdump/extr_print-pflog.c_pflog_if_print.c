
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct pfloghdr {scalar_t__ length; int af; } ;
struct pcap_pkthdr {int len; int caplen; } ;
struct TYPE_7__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;




 int BPF_WORDALIGN (int) ;
 scalar_t__ MIN_PFLOG_HDRLEN ;
 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct pfloghdr const) ;


 int ip6_print (TYPE_1__*,int const*,int) ;
 int ip_print (TYPE_1__*,int const*,int) ;
 int pflog_print (TYPE_1__*,struct pfloghdr const*) ;
 int tstr ;

u_int
pflog_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h,
               register const u_char *p)
{
 u_int length = h->len;
 u_int hdrlen;
 u_int caplen = h->caplen;
 const struct pfloghdr *hdr;
 uint8_t af;


 if (caplen < sizeof(uint8_t)) {
  ND_PRINT((ndo, "%s", tstr));
  return (caplen);
 }


 hdr = (const struct pfloghdr *)p;
 if (hdr->length < 45) {
  ND_PRINT((ndo, "[pflog: invalid header length!]"));
  return (hdr->length);
 }
 hdrlen = BPF_WORDALIGN(hdr->length);

 if (caplen < hdrlen) {
  ND_PRINT((ndo, "%s", tstr));
  return (hdrlen);
 }


 ND_TCHECK(*hdr);
 if (ndo->ndo_eflag)
  pflog_print(ndo, hdr);


 af = hdr->af;
 length -= hdrlen;
 caplen -= hdrlen;
 p += hdrlen;
 switch (af) {

  case 131:

  case 129:

          ip_print(ndo, p, length);
   break;



  case 130:


  case 128:

   ip6_print(ndo, p, length);
   break;


 default:

  if (!ndo->ndo_eflag)
   pflog_print(ndo, hdr);
  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 }

 return (hdrlen);
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return (hdrlen);
}
