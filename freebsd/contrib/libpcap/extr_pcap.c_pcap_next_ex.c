
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;
struct oneshot_userdata {TYPE_1__* pd; int const** pkt; struct pcap_pkthdr* hdr; } ;
struct TYPE_5__ {int (* read_op ) (TYPE_1__*,int,int ,int *) ;int oneshot_callback; int * rfile; struct pcap_pkthdr pcap_header; } ;
typedef TYPE_1__ pcap_t ;


 int pcap_offline_read (TYPE_1__*,int,int ,int *) ;
 int stub1 (TYPE_1__*,int,int ,int *) ;

int
pcap_next_ex(pcap_t *p, struct pcap_pkthdr **pkt_header,
    const u_char **pkt_data)
{
 struct oneshot_userdata s;

 s.hdr = &p->pcap_header;
 s.pkt = pkt_data;
 s.pd = p;


 *pkt_header= &p->pcap_header;

 if (p->rfile != ((void*)0)) {
  int status;


  status = pcap_offline_read(p, 1, p->oneshot_callback,
      (u_char *)&s);
  if (status == 0)
   return (-2);
  else
   return (status);
 }
 return (p->read_op(p, 1, p->oneshot_callback, (u_char *)&s));
}
