
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
typedef int netdissect_options ;


 int ether_print (int *,int const*,int ,int ,int *,int *) ;

u_int
ether_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h,
               const u_char *p)
{
 return (ether_print(ndo, p, h->len, h->caplen, ((void*)0), ((void*)0)));
}
