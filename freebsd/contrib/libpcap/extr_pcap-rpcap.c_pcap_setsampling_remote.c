
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef scalar_t__ uint16 ;
struct rpcap_sampling {scalar_t__ value; scalar_t__ method; } ;
struct rpcap_header {int plen; } ;
struct pcap_rpcap {int rmt_sockctrl; int protocol_version; } ;
struct TYPE_4__ {int method; int value; } ;
struct TYPE_5__ {int errbuf; TYPE_1__ rmt_samp; struct pcap_rpcap* priv; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_SAMP_NOSAMP ;
 int RPCAP_MSG_SETSAMPLING_REQ ;
 int RPCAP_NETBUF_SIZE ;
 int SOCKBUF_CHECKONLY ;
 scalar_t__ htonl (int) ;
 int memset (struct rpcap_sampling*,int ,int) ;
 int pcap_snprintf (int ,int ,char*,int) ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int) ;
 int rpcap_discard (int ,int ,int ) ;
 int rpcap_process_msg_header (int ,int ,int ,struct rpcap_header*,int ) ;
 scalar_t__ sock_bufferize (int *,int,int *,int*,int,int ,int ,int ) ;
 scalar_t__ sock_send (int ,char*,int,int ,int ) ;

__attribute__((used)) static int pcap_setsampling_remote(pcap_t *fp)
{
 struct pcap_rpcap *pr = fp->priv;
 char sendbuf[RPCAP_NETBUF_SIZE];
 int sendbufidx = 0;
 struct rpcap_header header;
 struct rpcap_sampling *sampling_pars;


 if (fp->rmt_samp.method == PCAP_SAMP_NOSAMP)
  return 0;






 if (fp->rmt_samp.method < 0 || fp->rmt_samp.method > 255) {
  pcap_snprintf(fp->errbuf, PCAP_ERRBUF_SIZE,
      "Invalid sampling method %d", fp->rmt_samp.method);
  return -1;
 }
 if (fp->rmt_samp.value < 0 || fp->rmt_samp.value > 65535) {
  pcap_snprintf(fp->errbuf, PCAP_ERRBUF_SIZE,
      "Invalid sampling value %d", fp->rmt_samp.value);
  return -1;
 }

 if (sock_bufferize(((void*)0), sizeof(struct rpcap_header), ((void*)0),
  &sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 rpcap_createhdr((struct rpcap_header *) sendbuf,
     pr->protocol_version, RPCAP_MSG_SETSAMPLING_REQ, 0,
     sizeof(struct rpcap_sampling));


 sampling_pars = (struct rpcap_sampling *) &sendbuf[sendbufidx];

 if (sock_bufferize(((void*)0), sizeof(struct rpcap_sampling), ((void*)0),
  &sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 memset(sampling_pars, 0, sizeof(struct rpcap_sampling));

 sampling_pars->method = (uint8)fp->rmt_samp.method;
 sampling_pars->value = (uint16)htonl(fp->rmt_samp.value);

 if (sock_send(pr->rmt_sockctrl, sendbuf, sendbufidx, fp->errbuf,
     PCAP_ERRBUF_SIZE) < 0)
  return -1;


 if (rpcap_process_msg_header(pr->rmt_sockctrl, pr->protocol_version,
     RPCAP_MSG_SETSAMPLING_REQ, &header, fp->errbuf) == -1)
  return -1;




 if (rpcap_discard(pr->rmt_sockctrl, header.plen, fp->errbuf) == -1)
  return -1;

 return 0;
}
