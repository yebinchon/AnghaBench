
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct rpcap_stats {int svrcapt; int ifrecv; int ifdrop; int krnldrop; } ;
struct rpcap_header {int plen; } ;
struct pcap_stat {void* ps_sent; int ps_netdrop; int ps_capt; void* ps_recv; void* ps_ifdrop; void* ps_drop; } ;
struct pcap_rpcap {int rmt_sockctrl; int TotNetDrops; int TotCapt; int protocol_version; int rmt_capstarted; } ;
struct TYPE_3__ {int * errbuf; struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_STATS_EX ;
 int PCAP_STATS_STANDARD ;
 int RPCAP_MSG_STATS_REQ ;
 void* ntohl (int ) ;
 int pcap_snprintf (int *,int ,char*,int) ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int ) ;
 int rpcap_discard (int ,int ,int *) ;
 int rpcap_process_msg_header (int ,int ,int ,struct rpcap_header*,int *) ;
 int rpcap_recv (int ,char*,int,int *,int *) ;
 scalar_t__ sock_send (int ,char*,int,int *,int ) ;

__attribute__((used)) static struct pcap_stat *rpcap_stats_rpcap(pcap_t *p, struct pcap_stat *ps, int mode)
{
 struct pcap_rpcap *pr = p->priv;
 struct rpcap_header header;
 struct rpcap_stats netstats;
 uint32 plen;




 if (mode != PCAP_STATS_STANDARD)

 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Invalid stats mode %d", mode);
  return ((void*)0);
 }






 if (!pr->rmt_capstarted)
 {
  ps->ps_drop = 0;
  ps->ps_ifdrop = 0;
  ps->ps_recv = 0;
  return ps;
 }

 rpcap_createhdr(&header, pr->protocol_version,
     RPCAP_MSG_STATS_REQ, 0, 0);


 if (sock_send(pr->rmt_sockctrl, (char *)&header,
     sizeof(struct rpcap_header), p->errbuf, PCAP_ERRBUF_SIZE) < 0)
  return ((void*)0);


 if (rpcap_process_msg_header(pr->rmt_sockctrl, pr->protocol_version,
     RPCAP_MSG_STATS_REQ, &header, p->errbuf) == -1)
  return ((void*)0);

 plen = header.plen;


 if (rpcap_recv(pr->rmt_sockctrl, (char *)&netstats,
     sizeof(struct rpcap_stats), &plen, p->errbuf) == -1)
  goto error;

 ps->ps_drop = ntohl(netstats.krnldrop);
 ps->ps_ifdrop = ntohl(netstats.ifdrop);
 ps->ps_recv = ntohl(netstats.ifrecv);
 if (rpcap_discard(pr->rmt_sockctrl, plen, p->errbuf) == -1)
  goto error;

 return ps;

error:





 (void)rpcap_discard(pr->rmt_sockctrl, plen, ((void*)0));

 return ((void*)0);
}
