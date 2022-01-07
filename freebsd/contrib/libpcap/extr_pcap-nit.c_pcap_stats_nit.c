
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {int dummy; } ;
struct pcap_nit {struct pcap_stat stat; } ;
struct TYPE_3__ {struct pcap_nit* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
pcap_stats_nit(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_nit *pn = p->priv;
 *ps = pn->stat;
 return (0);
}
