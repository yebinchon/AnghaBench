
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct pcap_stat {int ps_capt; int ps_ifdrop; int ps_drop; int ps_recv; } ;
struct bpf_stat {int bs_capt; int ps_ifdrop; int bs_drop; int bs_recv; } ;
struct TYPE_3__ {struct pcap_stat stat; int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;


 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PacketGetStatsEx (int ,struct bpf_stat*) ;
 int pcap_snprintf (int ,int ,char*,char*) ;
 int pcap_win32_err_to_str (int ,char*) ;

struct pcap_stat *
pcap_stats_ex_npf(pcap_t *p, int *pcap_stat_size)
{
 struct pcap_win *pw = p->priv;
 struct bpf_stat bstats;
 char errbuf[PCAP_ERRBUF_SIZE+1];

 *pcap_stat_size = sizeof (p->stat);
 if (!PacketGetStatsEx(pw->adapter, &bstats)) {
  pcap_win32_err_to_str(GetLastError(), errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "PacketGetStatsEx error: %s", errbuf);
  return (((void*)0));
 }
 p->stat.ps_recv = bstats.bs_recv;
 p->stat.ps_drop = bstats.bs_drop;
 p->stat.ps_ifdrop = bstats.ps_ifdrop;



 return (&p->stat);
}
