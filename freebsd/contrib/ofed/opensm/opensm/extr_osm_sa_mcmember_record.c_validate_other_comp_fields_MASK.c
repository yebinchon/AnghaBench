#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ qkey; scalar_t__ tclass; int /*<<< orphan*/  sl_flow_hop; int /*<<< orphan*/  pkey; } ;
struct TYPE_7__ {TYPE_1__ mcmember_rec; } ;
typedef  TYPE_2__ osm_mgrp_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  osm_log_level_t ;
typedef  int ib_net64_t ;
struct TYPE_8__ {scalar_t__ qkey; scalar_t__ tclass; int /*<<< orphan*/  sl_flow_hop; int /*<<< orphan*/  pkey; } ;
typedef  TYPE_3__ ib_member_rec_t ;

/* Variables and functions */
 int IB_MCR_COMPMASK_FLOW ; 
 int IB_MCR_COMPMASK_HOP ; 
 int IB_MCR_COMPMASK_PKEY ; 
 int IB_MCR_COMPMASK_QKEY ; 
 int IB_MCR_COMPMASK_SL ; 
 int IB_MCR_COMPMASK_TCLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(osm_log_t * p_log, ib_net64_t comp_mask,
				      const ib_member_rec_t * p_mcmr,
				      osm_mgrp_t * p_mgrp,
				      osm_log_level_t log_level)
{
	int ret = 0;

	if ((IB_MCR_COMPMASK_QKEY & comp_mask) &&
	    p_mcmr->qkey != p_mgrp->mcmember_rec.qkey) {
		FUNC0(p_log, log_level, "ERR 1B30: "
			"Q_Key mismatch: query 0x%x group 0x%x\n",
			FUNC2(p_mcmr->qkey),
			FUNC2(p_mgrp->mcmember_rec.qkey));
		goto Exit;
	}

	if (IB_MCR_COMPMASK_PKEY & comp_mask) {
		if (!(FUNC5(p_mcmr->pkey) ||
		      FUNC5(p_mgrp->mcmember_rec.pkey))) {
			FUNC0(p_log, log_level, "ERR 1B31: "
				"Both limited P_Keys: query 0x%x group 0x%x\n",
				FUNC1(p_mcmr->pkey),
				FUNC1(p_mgrp->mcmember_rec.pkey));
			goto Exit;
		}
		if (FUNC4(p_mcmr->pkey) !=
		    FUNC4(p_mgrp->mcmember_rec.pkey)) {
			FUNC0(p_log, log_level, "ERR 1B32: "
				"P_Key base mismatch: query 0x%x group 0x%x\n",
				FUNC1(p_mcmr->pkey),
				FUNC1(p_mgrp->mcmember_rec.pkey));
			goto Exit;
		}
	}

	if ((IB_MCR_COMPMASK_TCLASS & comp_mask) &&
	    p_mcmr->tclass != p_mgrp->mcmember_rec.tclass) {
		FUNC0(p_log, log_level, "ERR 1B33: "
			"TClass mismatch: query %d group %d\n",
			p_mcmr->tclass, p_mgrp->mcmember_rec.tclass);
		goto Exit;
	}

	/* check SL, Flow, and Hop limit */
	{
		uint32_t mgrp_flow, query_flow;
		uint8_t mgrp_sl, query_sl;
		uint8_t mgrp_hop, query_hop;

		FUNC3(p_mcmr->sl_flow_hop,
					  &query_sl, &query_flow, &query_hop);

		FUNC3(p_mgrp->mcmember_rec.sl_flow_hop,
					  &mgrp_sl, &mgrp_flow, &mgrp_hop);

		if ((IB_MCR_COMPMASK_SL & comp_mask) && query_sl != mgrp_sl) {
			FUNC0(p_log, log_level, "ERR 1B34: "
				"SL mismatch: query %d group %d\n",
				query_sl, mgrp_sl);
			goto Exit;
		}

		if ((IB_MCR_COMPMASK_FLOW & comp_mask) &&
		    query_flow != mgrp_flow) {
			FUNC0(p_log, log_level, "ERR 1B35: "
				"FlowLabel mismatch: query 0x%x group 0x%x\n",
				query_flow, mgrp_flow);
			goto Exit;
		}

		if ((IB_MCR_COMPMASK_HOP & comp_mask) && query_hop != mgrp_hop) {
			FUNC0(p_log, log_level, "ERR 1B36: "
				"Hop mismatch: query %d group %d\n",
				query_hop, mgrp_hop);
			goto Exit;
		}
	}

	ret = 1;
Exit:
	return ret;
}