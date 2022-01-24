#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int counterselect; int portxmitdata; int portrcvdata; int portxmitpkts; int portrcvpkts; int portunicastxmitpkts; int portunicastrcvpkts; int portmulticastxmitpkits; int portmulticastrcvpkts; int counterSelect2; int symbolErrorCounter; int linkErrorRecoveryCounter; int linkDownedCounter; int portRcvErrors; int portRcvRemotePhysicalErrors; int portRcvSwitchRelayErrors; int portXmitDiscards; int portXmitConstraintErrors; int portRcvConstraintErrors; int localLinkIntegrityErrors; int excessiveBufferOverrunErrors; int VL15Dropped; int portXmitWait; int QP1Dropped; } ;

/* Variables and functions */
 int ALL_PORTS ; 
 int /*<<< orphan*/  IB_PC_EXT_COUNTER_SELECT2_F ; 
 int /*<<< orphan*/  IB_PC_EXT_COUNTER_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_EXCESS_OVR_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_LOCALINTEG_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_PHYSRCV_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_RCVCONSTR_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_RCV_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_SWITCH_REL_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_SYM_F ; 
 int /*<<< orphan*/  IB_PC_EXT_ERR_XMTCONSTR_F ; 
 int /*<<< orphan*/  IB_PC_EXT_LINK_DOWNED_F ; 
 int /*<<< orphan*/  IB_PC_EXT_LINK_RECOVERS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_PORT_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_EXT_QP1_DROP_F ; 
 int /*<<< orphan*/  IB_PC_EXT_RCV_BYTES_F ; 
 int /*<<< orphan*/  IB_PC_EXT_RCV_MPKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_RCV_PKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_RCV_UPKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_VL15_DROPPED_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_BYTES_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_DISCARDS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_MPKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_PKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_UPKTS_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_WAIT_F ; 
 int IB_PM_EXT_WIDTH_SUPPORTED ; 
 int IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  pc ; 
 TYPE_1__ perf_count_ext ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int,char*) ; 

__attribute__((used)) static void FUNC7(ib_portid_t * portid,
					      uint16_t cap_mask, uint32_t cap_mask2)
{
	char buf[1536];
	uint32_t val = ALL_PORTS;

	FUNC3(buf, 0, sizeof(buf));

	/* set port_select to 255 to emulate AllPortSelect */
	FUNC2(pc, IB_PC_EXT_PORT_SELECT_F, &val);
	FUNC2(pc, IB_PC_EXT_COUNTER_SELECT_F,
			 &perf_count_ext.counterselect);
	FUNC2(pc, IB_PC_EXT_XMT_BYTES_F,
			 &perf_count_ext.portxmitdata);
	FUNC2(pc, IB_PC_EXT_RCV_BYTES_F,
			 &perf_count_ext.portrcvdata);
	FUNC2(pc, IB_PC_EXT_XMT_PKTS_F,
			 &perf_count_ext.portxmitpkts);
	FUNC2(pc, IB_PC_EXT_RCV_PKTS_F, &perf_count_ext.portrcvpkts);

	if (cap_mask & IB_PM_EXT_WIDTH_SUPPORTED) {
		FUNC2(pc, IB_PC_EXT_XMT_UPKTS_F,
				 &perf_count_ext.portunicastxmitpkts);
		FUNC2(pc, IB_PC_EXT_RCV_UPKTS_F,
				 &perf_count_ext.portunicastrcvpkts);
		FUNC2(pc, IB_PC_EXT_XMT_MPKTS_F,
				 &perf_count_ext.portmulticastxmitpkits);
		FUNC2(pc, IB_PC_EXT_RCV_MPKTS_F,
				 &perf_count_ext.portmulticastrcvpkts);
	}

	if (FUNC0(cap_mask2) & IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP) {
		FUNC2(pc, IB_PC_EXT_COUNTER_SELECT2_F,
				 &perf_count_ext.counterSelect2);
		FUNC2(pc, IB_PC_EXT_ERR_SYM_F,
				 &perf_count_ext.symbolErrorCounter);
		FUNC2(pc, IB_PC_EXT_LINK_RECOVERS_F,
				 &perf_count_ext.linkErrorRecoveryCounter);
		FUNC2(pc, IB_PC_EXT_LINK_DOWNED_F,
				 &perf_count_ext.linkDownedCounter);
		FUNC2(pc, IB_PC_EXT_ERR_RCV_F,
				 &perf_count_ext.portRcvErrors);
		FUNC2(pc, IB_PC_EXT_ERR_PHYSRCV_F,
				 &perf_count_ext.portRcvRemotePhysicalErrors);
		FUNC2(pc, IB_PC_EXT_ERR_SWITCH_REL_F,
				 &perf_count_ext.portRcvSwitchRelayErrors);
		FUNC2(pc, IB_PC_EXT_XMT_DISCARDS_F,
				 &perf_count_ext.portXmitDiscards);
		FUNC2(pc, IB_PC_EXT_ERR_XMTCONSTR_F,
				 &perf_count_ext.portXmitConstraintErrors);
		FUNC2(pc, IB_PC_EXT_ERR_RCVCONSTR_F,
				 &perf_count_ext.portRcvConstraintErrors);
		FUNC2(pc, IB_PC_EXT_ERR_LOCALINTEG_F,
				 &perf_count_ext.localLinkIntegrityErrors);
		FUNC2(pc, IB_PC_EXT_ERR_EXCESS_OVR_F,
				 &perf_count_ext.excessiveBufferOverrunErrors);
		FUNC2(pc, IB_PC_EXT_VL15_DROPPED_F,
				 &perf_count_ext.VL15Dropped);
		FUNC2(pc, IB_PC_EXT_XMT_WAIT_F,
				 &perf_count_ext.portXmitWait);
		FUNC2(pc, IB_PC_EXT_QP1_DROP_F,
				 &perf_count_ext.QP1Dropped);
	}

	FUNC1(buf, sizeof buf, pc, sizeof pc);

	FUNC6("# Port extended counters: %s port %d (CapMask: 0x%02X CapMask2: 0x%07X)\n%s",
	       FUNC5(portid), ALL_PORTS, FUNC4(cap_mask), cap_mask2, buf);
}