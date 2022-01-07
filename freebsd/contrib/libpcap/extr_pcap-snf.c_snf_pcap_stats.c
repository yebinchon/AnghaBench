
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snf_ring_stats {scalar_t__ nic_pkt_bad; scalar_t__ nic_pkt_overflow; scalar_t__ ring_pkt_overflow; scalar_t__ ring_pkt_recv; } ;
struct pcap_stat {scalar_t__ ps_ifdrop; scalar_t__ ps_drop; scalar_t__ ps_recv; } ;
struct pcap_snf {int snf_ring; } ;
struct TYPE_3__ {int errbuf; struct pcap_snf* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int,char*) ;
 int snf_ring_getstats (int ,struct snf_ring_stats*) ;

__attribute__((used)) static int
snf_pcap_stats(pcap_t *p, struct pcap_stat *ps)
{
 struct snf_ring_stats stats;
 struct pcap_snf *snfps = p->priv;
 int rc;

 if ((rc = snf_ring_getstats(snfps->snf_ring, &stats))) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      rc, "snf_get_stats");
  return -1;
 }
 ps->ps_recv = stats.ring_pkt_recv + stats.ring_pkt_overflow;
 ps->ps_drop = stats.ring_pkt_overflow;
 ps->ps_ifdrop = stats.nic_pkt_overflow + stats.nic_pkt_bad;
 return 0;
}
