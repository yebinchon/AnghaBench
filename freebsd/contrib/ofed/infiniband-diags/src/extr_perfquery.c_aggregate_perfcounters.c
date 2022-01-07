
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int xmtwait; int rcvpkts; int xmtpkts; int rcvdata; int xmtdata; int vl15dropped; int qp1dropped; int excbufoverrunerrors; int linkintegrityerrors; int rcvconstrainterrors; int xmtconstrainterrors; int xmtdiscards; int rcvswrelayerrors; int rcvremotephyerrors; int rcverrors; int linkdowned; int linkrecovers; int symbolerrors; void* counterselect; void* portselect; } ;


 int IB_PC_COUNTER_SELECT_F ;
 int IB_PC_ERR_EXCESS_OVR_F ;
 int IB_PC_ERR_LOCALINTEG_F ;
 int IB_PC_ERR_PHYSRCV_F ;
 int IB_PC_ERR_RCVCONSTR_F ;
 int IB_PC_ERR_RCV_F ;
 int IB_PC_ERR_SWITCH_REL_F ;
 int IB_PC_ERR_SYM_F ;
 int IB_PC_ERR_XMTCONSTR_F ;
 int IB_PC_LINK_DOWNED_F ;
 int IB_PC_LINK_RECOVERS_F ;
 int IB_PC_PORT_SELECT_F ;
 int IB_PC_QP1_DROP_F ;
 int IB_PC_RCV_BYTES_F ;
 int IB_PC_RCV_PKTS_F ;
 int IB_PC_VL15_DROPPED_F ;
 int IB_PC_XMT_BYTES_F ;
 int IB_PC_XMT_DISCARDS_F ;
 int IB_PC_XMT_PKTS_F ;
 int IB_PC_XMT_WAIT_F ;
 int aggregate_16bit (int *,void*) ;
 int aggregate_32bit (int *,void*) ;
 int aggregate_4bit (int *,void*) ;
 int aggregate_8bit (int *,void*) ;
 int mad_decode_field (int ,int ,void**) ;
 int pc ;
 TYPE_1__ perf_count ;

__attribute__((used)) static void aggregate_perfcounters(void)
{
 uint32_t val;

 mad_decode_field(pc, IB_PC_PORT_SELECT_F, &val);
 perf_count.portselect = val;
 mad_decode_field(pc, IB_PC_COUNTER_SELECT_F, &val);
 perf_count.counterselect = val;
 mad_decode_field(pc, IB_PC_ERR_SYM_F, &val);
 aggregate_16bit(&perf_count.symbolerrors, val);
 mad_decode_field(pc, IB_PC_LINK_RECOVERS_F, &val);
 aggregate_8bit(&perf_count.linkrecovers, val);
 mad_decode_field(pc, IB_PC_LINK_DOWNED_F, &val);
 aggregate_8bit(&perf_count.linkdowned, val);
 mad_decode_field(pc, IB_PC_ERR_RCV_F, &val);
 aggregate_16bit(&perf_count.rcverrors, val);
 mad_decode_field(pc, IB_PC_ERR_PHYSRCV_F, &val);
 aggregate_16bit(&perf_count.rcvremotephyerrors, val);
 mad_decode_field(pc, IB_PC_ERR_SWITCH_REL_F, &val);
 aggregate_16bit(&perf_count.rcvswrelayerrors, val);
 mad_decode_field(pc, IB_PC_XMT_DISCARDS_F, &val);
 aggregate_16bit(&perf_count.xmtdiscards, val);
 mad_decode_field(pc, IB_PC_ERR_XMTCONSTR_F, &val);
 aggregate_8bit(&perf_count.xmtconstrainterrors, val);
 mad_decode_field(pc, IB_PC_ERR_RCVCONSTR_F, &val);
 aggregate_8bit(&perf_count.rcvconstrainterrors, val);
 mad_decode_field(pc, IB_PC_ERR_LOCALINTEG_F, &val);
 aggregate_4bit(&perf_count.linkintegrityerrors, val);
 mad_decode_field(pc, IB_PC_ERR_EXCESS_OVR_F, &val);
 aggregate_4bit(&perf_count.excbufoverrunerrors, val);




 mad_decode_field(pc, IB_PC_VL15_DROPPED_F, &val);
 aggregate_16bit(&perf_count.vl15dropped, val);
 mad_decode_field(pc, IB_PC_XMT_BYTES_F, &val);
 aggregate_32bit(&perf_count.xmtdata, val);
 mad_decode_field(pc, IB_PC_RCV_BYTES_F, &val);
 aggregate_32bit(&perf_count.rcvdata, val);
 mad_decode_field(pc, IB_PC_XMT_PKTS_F, &val);
 aggregate_32bit(&perf_count.xmtpkts, val);
 mad_decode_field(pc, IB_PC_RCV_PKTS_F, &val);
 aggregate_32bit(&perf_count.rcvpkts, val);
 mad_decode_field(pc, IB_PC_XMT_WAIT_F, &val);
 aggregate_32bit(&perf_count.xmtwait, val);
}
