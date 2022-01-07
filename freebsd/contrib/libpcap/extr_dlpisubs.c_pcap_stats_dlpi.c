
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_drop; int ps_recv; } ;
struct pcap_dlpi {struct pcap_stat stat; } ;
struct TYPE_3__ {struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;



int
pcap_stats_dlpi(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_dlpi *pd = p->priv;
 *ps = pd->stat;




 ps->ps_recv += ps->ps_drop;
 return (0);
}
