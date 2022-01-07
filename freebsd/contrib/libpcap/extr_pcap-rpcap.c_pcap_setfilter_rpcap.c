
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_rpcap {int rmt_capstarted; } ;
struct bpf_program {int dummy; } ;
struct TYPE_5__ {struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int install_bpf_program (TYPE_1__*,struct bpf_program*) ;
 scalar_t__ pcap_updatefilter_remote (TYPE_1__*,struct bpf_program*) ;

__attribute__((used)) static int pcap_setfilter_rpcap(pcap_t *fp, struct bpf_program *prog)
{
 struct pcap_rpcap *pr = fp->priv;

 if (!pr->rmt_capstarted)
 {

  if (install_bpf_program(fp, prog) == -1)
   return -1;
  return 0;
 }


 if (pcap_updatefilter_remote(fp, prog))
  return -1;

 return 0;
}
