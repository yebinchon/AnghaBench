
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_stat {int dummy; } ;
typedef int pcap_t ;


 int PCAP_STATS_STANDARD ;
 struct pcap_stat* rpcap_stats_rpcap (int *,struct pcap_stat*,int ) ;

__attribute__((used)) static int pcap_stats_rpcap(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_stat *retval;

 retval = rpcap_stats_rpcap(p, ps, PCAP_STATS_STANDARD);

 if (retval)
  return 0;
 else
  return -1;
}
