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
typedef  void* uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  xmtwait; int /*<<< orphan*/  rcvpkts; int /*<<< orphan*/  xmtpkts; int /*<<< orphan*/  rcvdata; int /*<<< orphan*/  xmtdata; int /*<<< orphan*/  vl15dropped; int /*<<< orphan*/  qp1dropped; int /*<<< orphan*/  excbufoverrunerrors; int /*<<< orphan*/  linkintegrityerrors; int /*<<< orphan*/  rcvconstrainterrors; int /*<<< orphan*/  xmtconstrainterrors; int /*<<< orphan*/  xmtdiscards; int /*<<< orphan*/  rcvswrelayerrors; int /*<<< orphan*/  rcvremotephyerrors; int /*<<< orphan*/  rcverrors; int /*<<< orphan*/  linkdowned; int /*<<< orphan*/  linkrecovers; int /*<<< orphan*/  symbolerrors; void* counterselect; void* portselect; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PC_COUNTER_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_ERR_EXCESS_OVR_F ; 
 int /*<<< orphan*/  IB_PC_ERR_LOCALINTEG_F ; 
 int /*<<< orphan*/  IB_PC_ERR_PHYSRCV_F ; 
 int /*<<< orphan*/  IB_PC_ERR_RCVCONSTR_F ; 
 int /*<<< orphan*/  IB_PC_ERR_RCV_F ; 
 int /*<<< orphan*/  IB_PC_ERR_SWITCH_REL_F ; 
 int /*<<< orphan*/  IB_PC_ERR_SYM_F ; 
 int /*<<< orphan*/  IB_PC_ERR_XMTCONSTR_F ; 
 int /*<<< orphan*/  IB_PC_LINK_DOWNED_F ; 
 int /*<<< orphan*/  IB_PC_LINK_RECOVERS_F ; 
 int /*<<< orphan*/  IB_PC_PORT_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_QP1_DROP_F ; 
 int /*<<< orphan*/  IB_PC_RCV_BYTES_F ; 
 int /*<<< orphan*/  IB_PC_RCV_PKTS_F ; 
 int /*<<< orphan*/  IB_PC_VL15_DROPPED_F ; 
 int /*<<< orphan*/  IB_PC_XMT_BYTES_F ; 
 int /*<<< orphan*/  IB_PC_XMT_DISCARDS_F ; 
 int /*<<< orphan*/  IB_PC_XMT_PKTS_F ; 
 int /*<<< orphan*/  IB_PC_XMT_WAIT_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  pc ; 
 TYPE_1__ perf_count ; 

__attribute__((used)) static void FUNC5(void)
{
	uint32_t val;

	FUNC4(pc, IB_PC_PORT_SELECT_F, &val);
	perf_count.portselect = val;
	FUNC4(pc, IB_PC_COUNTER_SELECT_F, &val);
	perf_count.counterselect = val;
	FUNC4(pc, IB_PC_ERR_SYM_F, &val);
	FUNC0(&perf_count.symbolerrors, val);
	FUNC4(pc, IB_PC_LINK_RECOVERS_F, &val);
	FUNC3(&perf_count.linkrecovers, val);
	FUNC4(pc, IB_PC_LINK_DOWNED_F, &val);
	FUNC3(&perf_count.linkdowned, val);
	FUNC4(pc, IB_PC_ERR_RCV_F, &val);
	FUNC0(&perf_count.rcverrors, val);
	FUNC4(pc, IB_PC_ERR_PHYSRCV_F, &val);
	FUNC0(&perf_count.rcvremotephyerrors, val);
	FUNC4(pc, IB_PC_ERR_SWITCH_REL_F, &val);
	FUNC0(&perf_count.rcvswrelayerrors, val);
	FUNC4(pc, IB_PC_XMT_DISCARDS_F, &val);
	FUNC0(&perf_count.xmtdiscards, val);
	FUNC4(pc, IB_PC_ERR_XMTCONSTR_F, &val);
	FUNC3(&perf_count.xmtconstrainterrors, val);
	FUNC4(pc, IB_PC_ERR_RCVCONSTR_F, &val);
	FUNC3(&perf_count.rcvconstrainterrors, val);
	FUNC4(pc, IB_PC_ERR_LOCALINTEG_F, &val);
	FUNC2(&perf_count.linkintegrityerrors, val);
	FUNC4(pc, IB_PC_ERR_EXCESS_OVR_F, &val);
	FUNC2(&perf_count.excbufoverrunerrors, val);
#ifdef HAVE_IB_PC_QP1_DROP_F
	mad_decode_field(pc, IB_PC_QP1_DROP_F, &val);
	aggregate_16bit(&perf_count.qp1dropped, val);
#endif
	FUNC4(pc, IB_PC_VL15_DROPPED_F, &val);
	FUNC0(&perf_count.vl15dropped, val);
	FUNC4(pc, IB_PC_XMT_BYTES_F, &val);
	FUNC1(&perf_count.xmtdata, val);
	FUNC4(pc, IB_PC_RCV_BYTES_F, &val);
	FUNC1(&perf_count.rcvdata, val);
	FUNC4(pc, IB_PC_XMT_PKTS_F, &val);
	FUNC1(&perf_count.xmtpkts, val);
	FUNC4(pc, IB_PC_RCV_PKTS_F, &val);
	FUNC1(&perf_count.rcvpkts, val);
	FUNC4(pc, IB_PC_XMT_WAIT_F, &val);
	FUNC1(&perf_count.xmtwait, val);
}