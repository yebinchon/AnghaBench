
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ caplen; scalar_t__ len; } ;
struct arc_linux_header {int arc_type; } ;
struct TYPE_6__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;





 scalar_t__ ARC_LINUX_HDRLEN ;
 scalar_t__ ARC_LINUX_HDRNEWLEN ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 int arcnet_encap_print (TYPE_1__*,int,int const*,scalar_t__,scalar_t__) ;
 int arcnet_print (TYPE_1__*,int const*,scalar_t__,int ,int ,int ) ;

u_int
arcnet_linux_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 u_int caplen = h->caplen;
 u_int length = h->len;
 const struct arc_linux_header *ap;

 int archdrlen = 0;
 u_char arc_type;

 if (caplen < ARC_LINUX_HDRLEN || length < ARC_LINUX_HDRLEN) {
  ND_PRINT((ndo, "[|arcnet]"));
  return (caplen);
 }

 ap = (const struct arc_linux_header *)p;
 arc_type = ap->arc_type;

 switch (arc_type) {
 default:
  archdrlen = ARC_LINUX_HDRNEWLEN;
  if (caplen < ARC_LINUX_HDRNEWLEN || length < ARC_LINUX_HDRNEWLEN) {
   ND_PRINT((ndo, "[|arcnet]"));
   return (caplen);
  }
  break;
 case 128:
 case 130:
 case 129:
  archdrlen = ARC_LINUX_HDRLEN;
  break;
 }

 if (ndo->ndo_eflag)
  arcnet_print(ndo, p, length, 0, 0, 0);




 length -= archdrlen;
 caplen -= archdrlen;
 p += archdrlen;

 if (!arcnet_encap_print(ndo, arc_type, p, length, caplen))
  ND_DEFAULTPRINT(p, caplen);

 return (archdrlen);
}
