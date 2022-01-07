
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct lecdatahdr_8023 {int dummy; } ;
typedef int netdissect_options ;


 int lane_print (int *,int const*,int ,int ) ;

u_int
lane_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
 lane_print(ndo, p, h->len, h->caplen);

 return (sizeof(struct lecdatahdr_8023));
}
