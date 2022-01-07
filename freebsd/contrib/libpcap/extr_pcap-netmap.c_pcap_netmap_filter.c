
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct pcap_netmap {int cb_arg; int (* cb ) (int ,struct pcap_pkthdr*,int const*) ;int rx_pkts; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_3__ {struct bpf_insn* bf_insns; } ;
struct TYPE_4__ {TYPE_1__ fcode; struct pcap_netmap* priv; } ;
typedef TYPE_2__ pcap_t ;


 scalar_t__ bpf_filter (struct bpf_insn const*,int const*,int ,int ) ;
 int stub1 (int ,struct pcap_pkthdr*,int const*) ;

__attribute__((used)) static void
pcap_netmap_filter(u_char *arg, struct pcap_pkthdr *h, const u_char *buf)
{
 pcap_t *p = (pcap_t *)arg;
 struct pcap_netmap *pn = p->priv;
 const struct bpf_insn *pc = p->fcode.bf_insns;

 ++pn->rx_pkts;
 if (pc == ((void*)0) || bpf_filter(pc, buf, h->len, h->caplen))
  pn->cb(pn->cb_arg, h, buf);
}
