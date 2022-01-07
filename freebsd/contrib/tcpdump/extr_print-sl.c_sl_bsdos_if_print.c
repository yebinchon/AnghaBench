
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ caplen; scalar_t__ len; } ;
struct ip {int dummy; } ;
struct TYPE_6__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ SLIP_HDRLEN ;
 int ip_print (TYPE_1__*,int const*,scalar_t__) ;
 int sliplink_print (TYPE_1__*,int const*,struct ip const*,scalar_t__) ;
 int tstr ;

u_int
sl_bsdos_if_print(netdissect_options *ndo,
                  const struct pcap_pkthdr *h, const u_char *p)
{
 register u_int caplen = h->caplen;
 register u_int length = h->len;
 register const struct ip *ip;

 if (caplen < SLIP_HDRLEN) {
  ND_PRINT((ndo, "%s", tstr));
  return (caplen);
 }

 length -= SLIP_HDRLEN;

 ip = (const struct ip *)(p + SLIP_HDRLEN);






 ip_print(ndo, (const u_char *)ip, length);

 return (SLIP_HDRLEN);
}
