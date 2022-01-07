
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct TYPE_10__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int family ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ NULL_HDRLEN ;
 scalar_t__ SWAPLONG (scalar_t__) ;
 int atalk_print (TYPE_1__*,int const*,scalar_t__) ;
 int ip6_print (TYPE_1__*,int const*,scalar_t__) ;
 int ip_print (TYPE_1__*,int const*,scalar_t__) ;
 int ipx_print (TYPE_1__*,int const*,scalar_t__) ;
 int isoclns_print (TYPE_1__*,int const*,scalar_t__) ;
 int memcpy (char*,char const*,int) ;
 int null_hdr_print (TYPE_1__*,scalar_t__,scalar_t__) ;

u_int
null_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 u_int length = h->len;
 u_int caplen = h->caplen;
 u_int family;

 if (caplen < NULL_HDRLEN) {
  ND_PRINT((ndo, "[|null]"));
  return (NULL_HDRLEN);
 }

 memcpy((char *)&family, (const char *)p, sizeof(family));
 if ((family & 0xFFFF0000) != 0)
  family = SWAPLONG(family);

 if (ndo->ndo_eflag)
  null_hdr_print(ndo, family, length);

 length -= NULL_HDRLEN;
 caplen -= NULL_HDRLEN;
 p += NULL_HDRLEN;

 switch (family) {

 case 133:
  ip_print(ndo, p, length);
  break;

 case 132:
 case 130:
 case 131:
  ip6_print(ndo, p, length);
  break;

 case 128:
  isoclns_print(ndo, p, length);
  break;

 case 134:
  atalk_print(ndo, p, length);
  break;

 case 129:
  ipx_print(ndo, p, length);
  break;

 default:

  if (!ndo->ndo_eflag)
   null_hdr_print(ndo, family, length + NULL_HDRLEN);
  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 }

 return (NULL_HDRLEN);
}
