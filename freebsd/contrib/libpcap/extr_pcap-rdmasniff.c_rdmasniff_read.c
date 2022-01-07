
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct pcap_rdmasniff {int cq_event; int packets_recv; int cq; int channel; } ;
struct pcap_pkthdr {int caplen; int len; int ts; } ;
struct ibv_wc {scalar_t__ status; int wr_id; int byte_len; } ;
struct ibv_cq {int dummy; } ;
struct TYPE_5__ {int * bf_insns; } ;
struct TYPE_6__ {scalar_t__ break_loop; TYPE_1__ fcode; scalar_t__ buffer; scalar_t__ snapshot; struct pcap_rdmasniff* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ EINTR ;
 scalar_t__ IBV_WC_SUCCESS ;
 scalar_t__ PACKET_COUNT_IS_UNLIMITED (int) ;
 int PCAP_ERROR ;
 int PCAP_ERROR_BREAK ;
 int RDMASNIFF_RECEIVE_SIZE ;
 scalar_t__ bpf_filter (int *,int *,int ,int ) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,unsigned long long,scalar_t__,int ) ;
 int gettimeofday (int *,int *) ;
 int ibv_ack_cq_events (int ,int) ;
 scalar_t__ ibv_get_cq_event (int ,struct ibv_cq**,void**) ;
 int ibv_poll_cq (int ,int,struct ibv_wc*) ;
 int ibv_req_notify_cq (int ,int ) ;
 int ibv_wc_status_str (scalar_t__) ;
 int min (int ,int ) ;
 int rdmasniff_post_recv (TYPE_2__*,int) ;
 int stderr ;

__attribute__((used)) static int
rdmasniff_read(pcap_t *handle, int max_packets, pcap_handler callback, u_char *user)
{
 struct pcap_rdmasniff *priv = handle->priv;
 struct ibv_cq *ev_cq;
 void *ev_ctx;
 struct ibv_wc wc;
 struct pcap_pkthdr pkth;
 u_char *pktd;
 int count = 0;

 if (!priv->cq_event) {
  while (ibv_get_cq_event(priv->channel, &ev_cq, &ev_ctx) < 0) {
   if (errno != EINTR) {
    return PCAP_ERROR;
   }
   if (handle->break_loop) {
    handle->break_loop = 0;
    return PCAP_ERROR_BREAK;
   }
  }
  ibv_ack_cq_events(priv->cq, 1);
  ibv_req_notify_cq(priv->cq, 0);
  priv->cq_event = 1;
 }

 while (count < max_packets || PACKET_COUNT_IS_UNLIMITED(max_packets)) {
  if (ibv_poll_cq(priv->cq, 1, &wc) != 1) {
   priv->cq_event = 0;
   break;
  }

  if (wc.status != IBV_WC_SUCCESS) {
   fprintf(stderr, "failed WC wr_id %lld status %d/%s\n",
    (unsigned long long) wc.wr_id,
    wc.status, ibv_wc_status_str(wc.status));
   continue;
  }

  pkth.len = wc.byte_len;
  pkth.caplen = min(pkth.len, (u_int)handle->snapshot);
  gettimeofday(&pkth.ts, ((void*)0));

  pktd = (u_char *) handle->buffer + wc.wr_id * RDMASNIFF_RECEIVE_SIZE;

  if (handle->fcode.bf_insns == ((void*)0) ||
      bpf_filter(handle->fcode.bf_insns, pktd, pkth.len, pkth.caplen)) {
   callback(user, &pkth, pktd);
   ++priv->packets_recv;
   ++count;
  }

  rdmasniff_post_recv(handle, wc.wr_id);

  if (handle->break_loop) {
   handle->break_loop = 0;
   return PCAP_ERROR_BREAK;
  }
 }

 return count;
}
