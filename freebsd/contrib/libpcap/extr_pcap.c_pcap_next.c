
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;
struct oneshot_userdata {TYPE_1__* pd; int const** pkt; struct pcap_pkthdr* hdr; } ;
struct TYPE_4__ {int oneshot_callback; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ pcap_dispatch (TYPE_1__*,int,int ,int *) ;

const u_char *
pcap_next(pcap_t *p, struct pcap_pkthdr *h)
{
 struct oneshot_userdata s;
 const u_char *pkt;

 s.hdr = h;
 s.pkt = &pkt;
 s.pd = p;
 if (pcap_dispatch(p, 1, p->oneshot_callback, (u_char *)&s) <= 0)
  return (0);
 return (pkt);
}
