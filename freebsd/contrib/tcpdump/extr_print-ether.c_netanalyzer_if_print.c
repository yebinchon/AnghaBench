
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int len; int caplen; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ether_print (int *,int const*,int,int,int *,int *) ;

u_int
netanalyzer_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h,
                     const u_char *p)
{



 if (h->len < 4 || h->caplen < 4) {
  ND_PRINT((ndo, "[|netanalyzer]"));
  return (h->caplen);
 }


 return (4 + ether_print(ndo, p + 4, h->len - 4, h->caplen - 4, ((void*)0), ((void*)0)));
}
