
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tpacket_stats_v3 {int dummy; } ;
struct tpacket_stats {scalar_t__ tp_drops; scalar_t__ tp_packets; } ;
struct pcap_stat {int ps_ifdrop; scalar_t__ ps_drop; int ps_recv; } ;
struct pcap_linux {long proc_dropped; struct pcap_stat stat; int packets_read; int device; } ;
typedef int socklen_t ;
struct TYPE_4__ {scalar_t__ promisc; } ;
struct TYPE_5__ {int errbuf; int fd; TYPE_1__ opt; struct pcap_linux* priv; } ;
typedef TYPE_2__ pcap_t ;


 scalar_t__ EOPNOTSUPP ;
 int PACKET_STATISTICS ;
 int PCAP_ERRBUF_SIZE ;
 int SOL_PACKET ;
 scalar_t__ errno ;
 int getsockopt (int ,int ,int ,struct tpacket_stats*,int*) ;
 long linux_if_drops (int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;

__attribute__((used)) static int
pcap_stats_linux(pcap_t *handle, struct pcap_stat *stats)
{
 struct pcap_linux *handlep = handle->priv;
 long if_dropped = 0;




 if (handle->opt.promisc)
 {
  if_dropped = handlep->proc_dropped;
  handlep->proc_dropped = linux_if_drops(handlep->device);
  handlep->stat.ps_ifdrop += (handlep->proc_dropped - if_dropped);
 }
 stats->ps_recv = handlep->packets_read;
 stats->ps_drop = 0;
 stats->ps_ifdrop = handlep->stat.ps_ifdrop;
 return 0;
}
