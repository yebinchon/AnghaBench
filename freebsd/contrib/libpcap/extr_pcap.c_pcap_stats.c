
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_stat {int dummy; } ;
struct TYPE_4__ {int (* stats_op ) (TYPE_1__*,struct pcap_stat*) ;} ;
typedef TYPE_1__ pcap_t ;


 int stub1 (TYPE_1__*,struct pcap_stat*) ;

int
pcap_stats(pcap_t *p, struct pcap_stat *ps)
{
 return (p->stats_op(p, ps));
}
