
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
typedef int netdissect_options ;


 int ipfc_print (int *,int const*,int ,int ) ;

u_int
ipfc_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, register const u_char *p)
{
 return (ipfc_print(ndo, p, h->len, h->caplen));
}
