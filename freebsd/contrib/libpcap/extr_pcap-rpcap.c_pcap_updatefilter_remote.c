
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rpcap_header {int plen; } ;
struct rpcap_filterbpf_insn {int dummy; } ;
struct rpcap_filter {int dummy; } ;
struct pcap_rpcap {int rmt_sockctrl; int protocol_version; } ;
struct bpf_program {int bf_len; } ;
struct TYPE_4__ {int errbuf; struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int RPCAP_MSG_UPDATEFILTER_REQ ;
 int RPCAP_NETBUF_SIZE ;
 int SOCKBUF_CHECKONLY ;
 scalar_t__ pcap_pack_bpffilter (TYPE_1__*,char*,int*,struct bpf_program*) ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int) ;
 int rpcap_discard (int ,int ,int ) ;
 int rpcap_process_msg_header (int ,int ,int ,struct rpcap_header*,int ) ;
 scalar_t__ sock_bufferize (int *,int,int *,int*,int,int ,int ,int ) ;
 scalar_t__ sock_send (int ,char*,int,int ,int ) ;

__attribute__((used)) static int pcap_updatefilter_remote(pcap_t *fp, struct bpf_program *prog)
{
 struct pcap_rpcap *pr = fp->priv;
 char sendbuf[RPCAP_NETBUF_SIZE];
 int sendbufidx = 0;
 struct rpcap_header header;

 if (sock_bufferize(((void*)0), sizeof(struct rpcap_header), ((void*)0), &sendbufidx,
  RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 rpcap_createhdr((struct rpcap_header *) sendbuf,
     pr->protocol_version, RPCAP_MSG_UPDATEFILTER_REQ, 0,
     sizeof(struct rpcap_filter) + prog->bf_len * sizeof(struct rpcap_filterbpf_insn));

 if (pcap_pack_bpffilter(fp, &sendbuf[sendbufidx], &sendbufidx, prog))
  return -1;

 if (sock_send(pr->rmt_sockctrl, sendbuf, sendbufidx, fp->errbuf,
     PCAP_ERRBUF_SIZE) < 0)
  return -1;


 if (rpcap_process_msg_header(pr->rmt_sockctrl, pr->protocol_version,
     RPCAP_MSG_UPDATEFILTER_REQ, &header, fp->errbuf) == -1)
  return -1;




 if (rpcap_discard(pr->rmt_sockctrl, header.plen, fp->errbuf) == -1)
  return -1;

 return 0;
}
