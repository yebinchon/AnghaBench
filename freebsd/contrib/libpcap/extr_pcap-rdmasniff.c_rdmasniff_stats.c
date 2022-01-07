
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_ifdrop; scalar_t__ ps_drop; int ps_recv; } ;
struct pcap_rdmasniff {int packets_recv; } ;
struct TYPE_3__ {struct pcap_rdmasniff* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
rdmasniff_stats(pcap_t *handle, struct pcap_stat *stat)
{
 struct pcap_rdmasniff *priv = handle->priv;

 stat->ps_recv = priv->packets_recv;
 stat->ps_drop = 0;
 stat->ps_ifdrop = 0;

 return 0;
}
