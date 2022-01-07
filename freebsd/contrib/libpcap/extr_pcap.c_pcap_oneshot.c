
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;
struct oneshot_userdata {int const** pkt; struct pcap_pkthdr* hdr; } ;



void
pcap_oneshot(u_char *user, const struct pcap_pkthdr *h, const u_char *pkt)
{
 struct oneshot_userdata *sp = (struct oneshot_userdata *)user;

 *sp->hdr = *h;
 *sp->pkt = pkt;
}
