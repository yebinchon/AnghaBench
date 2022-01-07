
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ caplen; int len; } ;
typedef int netdissect_options ;


 scalar_t__ llap_print (int *,int const*,int ) ;

u_int
ltalk_if_print(netdissect_options *ndo,
               const struct pcap_pkthdr *h, const u_char *p)
{
 u_int hdrlen;

 hdrlen = llap_print(ndo, p, h->len);
 if (hdrlen == 0) {

  return (h->caplen);
 }
 return (hdrlen);
}
