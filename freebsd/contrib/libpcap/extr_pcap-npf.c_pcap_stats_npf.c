
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct pcap_stat {int ps_ifdrop; int ps_drop; int ps_recv; } ;
struct bpf_stat {int ps_ifdrop; int bs_drop; int bs_recv; } ;
struct TYPE_3__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;


 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PacketGetStats (int ,struct bpf_stat*) ;
 int pcap_snprintf (int ,int ,char*,char*) ;
 int pcap_win32_err_to_str (int ,char*) ;

__attribute__((used)) static int
pcap_stats_npf(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_win *pw = p->priv;
 struct bpf_stat bstats;
 char errbuf[PCAP_ERRBUF_SIZE+1];
 if (!PacketGetStats(pw->adapter, &bstats)) {
  pcap_win32_err_to_str(GetLastError(), errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "PacketGetStats error: %s", errbuf);
  return (-1);
 }
 ps->ps_recv = bstats.bs_recv;
 ps->ps_drop = bstats.bs_drop;
 ps->ps_ifdrop = 0;


 return (0);
}
