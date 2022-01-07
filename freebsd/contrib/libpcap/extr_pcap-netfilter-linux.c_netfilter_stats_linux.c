
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_ifdrop; int ps_drop; int ps_recv; } ;
struct pcap_netfilter {int packets_nobufs; int packets_read; } ;
struct TYPE_3__ {struct pcap_netfilter* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
netfilter_stats_linux(pcap_t *handle, struct pcap_stat *stats)
{
 struct pcap_netfilter *handlep = handle->priv;

 stats->ps_recv = handlep->packets_read;
 stats->ps_drop = handlep->packets_nobufs;
 stats->ps_ifdrop = 0;
 return 0;
}
