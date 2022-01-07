
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_ifdrop; int ps_drop; int ps_recv; } ;
struct pcap_pf {scalar_t__ OrigMissed; scalar_t__ TotMissed; int TotDrops; int TotAccepted; } ;
struct TYPE_3__ {struct pcap_pf* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
pcap_stats_pf(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_pf *pf = p->priv;
 ps->ps_recv = pf->TotAccepted;
 ps->ps_drop = pf->TotDrops;
 ps->ps_ifdrop = pf->TotMissed - pf->OrigMissed;
 return (0);
}
