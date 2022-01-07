
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int QP1Dropped; int portXmitWait; int VL15Dropped; int excessiveBufferOverrunErrors; int localLinkIntegrityErrors; int portRcvConstraintErrors; int portXmitConstraintErrors; int portXmitDiscards; int portRcvSwitchRelayErrors; int portRcvRemotePhysicalErrors; int portRcvErrors; int linkDownedCounter; int linkErrorRecoveryCounter; int symbolErrorCounter; void* counterSelect2; int portmulticastrcvpkts; int portmulticastxmitpkits; int portunicastrcvpkts; int portunicastxmitpkts; int portrcvpkts; int portxmitpkts; int portrcvdata; int portxmitdata; void* counterselect; void* portselect; } ;


 int IB_PC_EXT_COUNTER_SELECT2_F ;
 int IB_PC_EXT_COUNTER_SELECT_F ;
 int IB_PC_EXT_ERR_EXCESS_OVR_F ;
 int IB_PC_EXT_ERR_LOCALINTEG_F ;
 int IB_PC_EXT_ERR_PHYSRCV_F ;
 int IB_PC_EXT_ERR_RCVCONSTR_F ;
 int IB_PC_EXT_ERR_RCV_F ;
 int IB_PC_EXT_ERR_SWITCH_REL_F ;
 int IB_PC_EXT_ERR_SYM_F ;
 int IB_PC_EXT_ERR_XMTCONSTR_F ;
 int IB_PC_EXT_LINK_DOWNED_F ;
 int IB_PC_EXT_LINK_RECOVERS_F ;
 int IB_PC_EXT_PORT_SELECT_F ;
 int IB_PC_EXT_QP1_DROP_F ;
 int IB_PC_EXT_RCV_BYTES_F ;
 int IB_PC_EXT_RCV_MPKTS_F ;
 int IB_PC_EXT_RCV_PKTS_F ;
 int IB_PC_EXT_RCV_UPKTS_F ;
 int IB_PC_EXT_VL15_DROPPED_F ;
 int IB_PC_EXT_XMT_BYTES_F ;
 int IB_PC_EXT_XMT_DISCARDS_F ;
 int IB_PC_EXT_XMT_MPKTS_F ;
 int IB_PC_EXT_XMT_PKTS_F ;
 int IB_PC_EXT_XMT_UPKTS_F ;
 int IB_PC_EXT_XMT_WAIT_F ;
 int IB_PM_EXT_WIDTH_SUPPORTED ;
 int IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP ;
 int aggregate_64bit (int *,void*) ;
 int htonl (void*) ;
 int mad_decode_field (int ,int ,void**) ;
 int pc ;
 TYPE_1__ perf_count_ext ;

__attribute__((used)) static void aggregate_perfcounters_ext(uint16_t cap_mask, uint32_t cap_mask2)
{
 uint32_t val;
 uint64_t val64;

 mad_decode_field(pc, IB_PC_EXT_PORT_SELECT_F, &val);
 perf_count_ext.portselect = val;
 mad_decode_field(pc, IB_PC_EXT_COUNTER_SELECT_F, &val);
 perf_count_ext.counterselect = val;
 mad_decode_field(pc, IB_PC_EXT_XMT_BYTES_F, &val64);
 aggregate_64bit(&perf_count_ext.portxmitdata, val64);
 mad_decode_field(pc, IB_PC_EXT_RCV_BYTES_F, &val64);
 aggregate_64bit(&perf_count_ext.portrcvdata, val64);
 mad_decode_field(pc, IB_PC_EXT_XMT_PKTS_F, &val64);
 aggregate_64bit(&perf_count_ext.portxmitpkts, val64);
 mad_decode_field(pc, IB_PC_EXT_RCV_PKTS_F, &val64);
 aggregate_64bit(&perf_count_ext.portrcvpkts, val64);

 if (cap_mask & IB_PM_EXT_WIDTH_SUPPORTED) {
  mad_decode_field(pc, IB_PC_EXT_XMT_UPKTS_F, &val64);
  aggregate_64bit(&perf_count_ext.portunicastxmitpkts, val64);
  mad_decode_field(pc, IB_PC_EXT_RCV_UPKTS_F, &val64);
  aggregate_64bit(&perf_count_ext.portunicastrcvpkts, val64);
  mad_decode_field(pc, IB_PC_EXT_XMT_MPKTS_F, &val64);
  aggregate_64bit(&perf_count_ext.portmulticastxmitpkits, val64);
  mad_decode_field(pc, IB_PC_EXT_RCV_MPKTS_F, &val64);
  aggregate_64bit(&perf_count_ext.portmulticastrcvpkts, val64);
 }

 if (htonl(cap_mask2) & IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP) {
  mad_decode_field(pc, IB_PC_EXT_COUNTER_SELECT2_F, &val);
  perf_count_ext.counterSelect2 = val;
  mad_decode_field(pc, IB_PC_EXT_ERR_SYM_F, &val64);
  aggregate_64bit(&perf_count_ext.symbolErrorCounter, val64);
  mad_decode_field(pc, IB_PC_EXT_LINK_RECOVERS_F, &val64);
  aggregate_64bit(&perf_count_ext.linkErrorRecoveryCounter, val64);
  mad_decode_field(pc, IB_PC_EXT_LINK_DOWNED_F, &val64);
  aggregate_64bit(&perf_count_ext.linkDownedCounter, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_RCV_F, &val64);
  aggregate_64bit(&perf_count_ext.portRcvErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_PHYSRCV_F, &val64);
  aggregate_64bit(&perf_count_ext.portRcvRemotePhysicalErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_SWITCH_REL_F, &val64);
  aggregate_64bit(&perf_count_ext.portRcvSwitchRelayErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_XMT_DISCARDS_F, &val64);
  aggregate_64bit(&perf_count_ext.portXmitDiscards, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_XMTCONSTR_F, &val64);
  aggregate_64bit(&perf_count_ext.portXmitConstraintErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_RCVCONSTR_F, &val64);
  aggregate_64bit(&perf_count_ext.portRcvConstraintErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_LOCALINTEG_F, &val64);
  aggregate_64bit(&perf_count_ext.localLinkIntegrityErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_ERR_EXCESS_OVR_F, &val64);
  aggregate_64bit(&perf_count_ext.excessiveBufferOverrunErrors, val64);
  mad_decode_field(pc, IB_PC_EXT_VL15_DROPPED_F, &val64);
  aggregate_64bit(&perf_count_ext.VL15Dropped, val64);
  mad_decode_field(pc, IB_PC_EXT_XMT_WAIT_F, &val64);
  aggregate_64bit(&perf_count_ext.portXmitWait, val64);
  mad_decode_field(pc, IB_PC_EXT_QP1_DROP_F, &val64);
  aggregate_64bit(&perf_count_ext.QP1Dropped, val64);
 }
}
