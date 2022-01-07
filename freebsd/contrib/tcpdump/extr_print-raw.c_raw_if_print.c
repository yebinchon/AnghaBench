
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int len; } ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ipN_print (TYPE_1__*,int const*,int ) ;

u_int
raw_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 if (ndo->ndo_eflag)
  ND_PRINT((ndo, "ip: "));

 ipN_print(ndo, p, h->len);

 return (0);
}
