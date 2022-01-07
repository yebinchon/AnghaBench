
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ PPP_HDRLEN ;
 int ppp_print (TYPE_1__*,scalar_t__ const*,scalar_t__) ;

u_int
ppp_if_print(netdissect_options *ndo,
             const struct pcap_pkthdr *h, register const u_char *p)
{
 register u_int length = h->len;
 register u_int caplen = h->caplen;

 if (caplen < PPP_HDRLEN) {
  ND_PRINT((ndo, "[|ppp]"));
  return (caplen);
 }
 ppp_print(ndo, p, length);

 return (0);
}
