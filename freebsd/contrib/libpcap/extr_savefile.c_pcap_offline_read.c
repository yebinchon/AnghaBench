
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_5__ {struct bpf_insn* bf_insns; } ;
struct TYPE_6__ {int (* next_packet_op ) (TYPE_2__*,struct pcap_pkthdr*,int **) ;TYPE_1__ fcode; scalar_t__ break_loop; } ;
typedef TYPE_2__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ bpf_filter (struct bpf_insn*,int *,int ,int ) ;
 int stub1 (TYPE_2__*,struct pcap_pkthdr*,int **) ;
 int stub2 (int *,struct pcap_pkthdr*,int *) ;

int
pcap_offline_read(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct bpf_insn *fcode;
 int status = 0;
 int n = 0;
 u_char *data;

 while (status == 0) {
  struct pcap_pkthdr h;
  if (p->break_loop) {
   if (n == 0) {
    p->break_loop = 0;
    return (-2);
   } else
    return (n);
  }

  status = p->next_packet_op(p, &h, &data);
  if (status) {
   if (status == 1)
    return (0);
   return (status);
  }

  if ((fcode = p->fcode.bf_insns) == ((void*)0) ||
      bpf_filter(fcode, data, h.len, h.caplen)) {
   (*callback)(user, &h, data);
   if (++n >= cnt && cnt > 0)
    break;
  }
 }

 return (n);
}
