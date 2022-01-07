
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {int dummy; } ;
struct pcap_snit {struct pcap_stat stat; } ;
struct TYPE_3__ {struct pcap_snit* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
pcap_stats_snit(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_snit *psn = p->priv;
 *ps = psn->stat;
 return (0);
}
