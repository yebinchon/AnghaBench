
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;


 int LOG_WARNING ;
 int PCAP_OPT_FIL ;
 int filter ;
 int hpcap ;
 int logmsg (int ,char*,int ) ;
 scalar_t__ pcap_compile (int ,struct bpf_program*,int ,int ,int ) ;
 int pcap_freecode (struct bpf_program*) ;
 int pcap_geterr (int ) ;
 scalar_t__ pcap_setfilter (int ,struct bpf_program*) ;

void
set_pcap_filter(void)
{
 struct bpf_program bprog;

 if (pcap_compile(hpcap, &bprog, filter, PCAP_OPT_FIL, 0) < 0)
  logmsg(LOG_WARNING, "%s", pcap_geterr(hpcap));
 else {
  if (pcap_setfilter(hpcap, &bprog) < 0)
   logmsg(LOG_WARNING, "%s", pcap_geterr(hpcap));
  pcap_freecode(&bprog);
 }
}
