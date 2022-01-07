
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {int qid; TYPE_3__* udma; } ;
struct al_eth_pkt {int flags; int tunnel_mode; int l3_proto_idx; int num_of_bufs; TYPE_2__* bufs; TYPE_1__* meta; int vlan_mod_del_count; int vlan_mod_add_count; int source_vlan_count; int outer_l3_proto_idx; int l4_proto_idx; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int len; scalar_t__ addr; } ;
struct TYPE_4__ {int words_valid; int outer_l3_len; int outer_l3_offset; int ts_index; int mss_val; int l4_header_len; int l3_header_offset; int l3_header_len; int store; } ;






 int AL_ETH_TUNNEL_NO_UDP ;
 int AL_ETH_TUNNEL_WITH_UDP ;
 int AL_ETH_TX_FLAGS_IPV4_L3_CSUM ;
 int AL_ETH_TX_FLAGS_L2_DIS_FCS ;
 int AL_ETH_TX_FLAGS_L4_CSUM ;
 int AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM ;
 int AL_ETH_TX_FLAGS_TS ;
 int AL_ETH_TX_FLAGS_TSO ;
 int al_dbg (char*,int ,int ,...) ;

__attribute__((used)) static void
al_dump_tx_pkt(struct al_udma_q *tx_dma_q, struct al_eth_pkt *pkt)
{
 const char *tso = (pkt->flags & AL_ETH_TX_FLAGS_TSO) ? "TSO" : "";
 const char *l3_csum = (pkt->flags & AL_ETH_TX_FLAGS_IPV4_L3_CSUM) ? "L3 CSUM" : "";
 const char *l4_csum = (pkt->flags & AL_ETH_TX_FLAGS_L4_CSUM) ?
   ((pkt->flags & AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM) ? "L4 PARTIAL CSUM" : "L4 FULL CSUM") : "";
 const char *fcs = (pkt->flags & AL_ETH_TX_FLAGS_L2_DIS_FCS) ? "Disable FCS" : "";
 const char *ptp = (pkt->flags & AL_ETH_TX_FLAGS_TS) ? "TX_PTP" : "";
 const char *l3_proto_name = "unknown";
 const char *l4_proto_name = "unknown";
 const char *outer_l3_proto_name = "N/A";
 const char *tunnel_mode = (((pkt->tunnel_mode &
    AL_ETH_TUNNEL_WITH_UDP) == AL_ETH_TUNNEL_WITH_UDP) ?
    "TUNNEL_WITH_UDP" :
    (((pkt->tunnel_mode &
    AL_ETH_TUNNEL_NO_UDP) == AL_ETH_TUNNEL_NO_UDP) ?
    "TUNNEL_NO_UDP" : ""));
 uint32_t total_len = 0;
 int i;

 al_dbg("[%s %d]: flags: %s %s %s %s %s %s\n", tx_dma_q->udma->name, tx_dma_q->qid,
   tso, l3_csum, l4_csum, fcs, ptp, tunnel_mode);

 switch (pkt->l3_proto_idx) {
 case 131:
  l3_proto_name = "IPv4";
  break;
 case 130:
  l3_proto_name = "IPv6";
  break;
 default:
  l3_proto_name = "unknown";
  break;
 }

 switch (pkt->l4_proto_idx) {
 case 129:
  l4_proto_name = "TCP";
  break;
 case 128:
  l4_proto_name = "UDP";
  break;
 default:
  l4_proto_name = "unknown";
  break;
 }

 switch (pkt->outer_l3_proto_idx) {
 case 131:
  outer_l3_proto_name = "IPv4";
  break;
 case 130:
  outer_l3_proto_name = "IPv6";
  break;
 default:
  outer_l3_proto_name = "N/A";
  break;
 }

 al_dbg("[%s %d]: L3 proto: %d (%s). L4 proto: %d (%s). Outer_L3 proto: %d (%s). vlan source count %d. mod add %d. mod del %d\n",
   tx_dma_q->udma->name, tx_dma_q->qid, pkt->l3_proto_idx,
   l3_proto_name, pkt->l4_proto_idx, l4_proto_name,
   pkt->outer_l3_proto_idx, outer_l3_proto_name,
   pkt->source_vlan_count, pkt->vlan_mod_add_count,
   pkt->vlan_mod_del_count);

 if (pkt->meta) {
  const char * store = pkt->meta->store ? "Yes" : "No";
  const char *ptp_val = (pkt->flags & AL_ETH_TX_FLAGS_TS) ? "Yes" : "No";

  al_dbg("[%s %d]: tx pkt with meta data. words valid %x\n",
   tx_dma_q->udma->name, tx_dma_q->qid,
   pkt->meta->words_valid);
  al_dbg("[%s %d]: meta: store to cache %s. l3 hdr len %d. l3 hdr offset %d. "
   "l4 hdr len %d. mss val %d ts_index %d ts_val:%s\n"
   , tx_dma_q->udma->name, tx_dma_q->qid, store,
   pkt->meta->l3_header_len, pkt->meta->l3_header_offset,
   pkt->meta->l4_header_len, pkt->meta->mss_val,
   pkt->meta->ts_index, ptp_val);
  al_dbg("outer_l3_hdr_offset %d. outer_l3_len %d.\n",
   pkt->meta->outer_l3_offset, pkt->meta->outer_l3_len);
 }

 al_dbg("[%s %d]: num of bufs: %d\n", tx_dma_q->udma->name, tx_dma_q->qid,
  pkt->num_of_bufs);
 for (i = 0; i < pkt->num_of_bufs; i++) {
  al_dbg("eth [%s %d]: buf[%d]: len 0x%08x. address 0x%016llx\n", tx_dma_q->udma->name, tx_dma_q->qid,
   i, pkt->bufs[i].len, (unsigned long long)pkt->bufs[i].addr);
  total_len += pkt->bufs[i].len;
 }
 al_dbg("[%s %d]: total len: 0x%08x\n", tx_dma_q->udma->name, tx_dma_q->qid, total_len);

}
