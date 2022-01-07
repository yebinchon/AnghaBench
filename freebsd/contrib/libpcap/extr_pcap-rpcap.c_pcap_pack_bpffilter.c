
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rpcap_filterbpf_insn {void* k; int jt; int jf; void* code; } ;
struct rpcap_filter {void* nitems; void* filtertype; } ;
struct bpf_program {int bf_len; struct bpf_insn* bf_insns; } ;
struct bpf_insn {int k; int jt; int jf; int code; } ;
struct TYPE_4__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;
typedef int int32 ;


 int PCAP_ERRBUF_SIZE ;
 int RPCAP_NETBUF_SIZE ;
 int RPCAP_UPDATEFILTER_BPF ;
 int SOCKBUF_CHECKONLY ;
 void* htonl (int ) ;
 void* htons (int ) ;
 int pcap_compile (TYPE_1__*,struct bpf_program*,int *,int,int ) ;
 scalar_t__ sock_bufferize (int *,int,int *,int*,int ,int ,int ,int ) ;

__attribute__((used)) static int pcap_pack_bpffilter(pcap_t *fp, char *sendbuf, int *sendbufidx, struct bpf_program *prog)
{
 struct rpcap_filter *filter;
 struct rpcap_filterbpf_insn *insn;
 struct bpf_insn *bf_insn;
 struct bpf_program fake_prog;
 unsigned int i;

 if (prog->bf_len == 0)
 {
  if (pcap_compile(fp, &fake_prog, ((void*)0) , 1, 0) == -1)
   return -1;

  prog = &fake_prog;
 }

 filter = (struct rpcap_filter *) sendbuf;

 if (sock_bufferize(((void*)0), sizeof(struct rpcap_filter), ((void*)0), sendbufidx,
  RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 filter->filtertype = htons(RPCAP_UPDATEFILTER_BPF);
 filter->nitems = htonl((int32)prog->bf_len);

 if (sock_bufferize(((void*)0), prog->bf_len * sizeof(struct rpcap_filterbpf_insn),
  ((void*)0), sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 insn = (struct rpcap_filterbpf_insn *) (filter + 1);
 bf_insn = prog->bf_insns;

 for (i = 0; i < prog->bf_len; i++)
 {
  insn->code = htons(bf_insn->code);
  insn->jf = bf_insn->jf;
  insn->jt = bf_insn->jt;
  insn->k = htonl(bf_insn->k);

  insn++;
  bf_insn++;
 }

 return 0;
}
