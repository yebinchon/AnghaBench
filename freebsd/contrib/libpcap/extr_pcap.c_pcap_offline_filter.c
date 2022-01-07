
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct bpf_program {struct bpf_insn* bf_insns; } ;
struct bpf_insn {int dummy; } ;


 int bpf_filter (struct bpf_insn const*,int const*,int ,int ) ;

int
pcap_offline_filter(const struct bpf_program *fp, const struct pcap_pkthdr *h,
    const u_char *pkt)
{
 const struct bpf_insn *fcode = fp->bf_insns;

 if (fcode != ((void*)0))
  return (bpf_filter(fcode, pkt, h->len, h->caplen));
 else
  return (0);
}
