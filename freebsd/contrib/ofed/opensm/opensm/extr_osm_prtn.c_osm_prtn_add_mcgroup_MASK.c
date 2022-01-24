#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_17__ {int /*<<< orphan*/  subnet_timeout; } ;
struct TYPE_18__ {TYPE_2__ opt; TYPE_1__* p_osm; } ;
typedef  TYPE_3__ osm_subn_t ;
typedef  int /*<<< orphan*/  osm_sa_t ;
struct TYPE_19__ {int pkey; } ;
typedef  TYPE_4__ osm_prtn_t ;
typedef  int /*<<< orphan*/  osm_mgrp_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  mc_rec ;
typedef  int ib_net64_t ;
typedef  int ib_net16_t ;
struct TYPE_21__ {int /*<<< orphan*/  raw; } ;
struct TYPE_20__ {int mtu; int tclass; int pkey; int rate; TYPE_6__ mgid; int /*<<< orphan*/  scope_state; int /*<<< orphan*/  sl_flow_hop; int /*<<< orphan*/  pkt_life; int /*<<< orphan*/  qkey; } ;
typedef  TYPE_5__ ib_member_rec_t ;
typedef  TYPE_6__ ib_gid_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;
struct TYPE_16__ {int /*<<< orphan*/  sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_ERROR ; 
 int IB_HOPLIMIT_MAX ; 
 int IB_MCR_COMPMASK_MTU ; 
 int IB_MCR_COMPMASK_MTU_SEL ; 
 int IB_MCR_COMPMASK_RATE ; 
 int IB_MCR_COMPMASK_RATE_SEL ; 
 int /*<<< orphan*/  IB_MC_REC_STATE_FULL_MEMBER ; 
 int IB_MC_SCOPE_LINK_LOCAL ; 
 int IB_PATH_SELECTOR_EXACTLY ; 
 int INET6_ADDRSTRLEN ; 
 int OSM_DEFAULT_MGRP_SCOPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_6__ const*,int) ; 

ib_api_status_t FUNC11(osm_log_t * p_log, osm_subn_t * p_subn,
				     osm_prtn_t * p, uint8_t rate, uint8_t mtu,
				     uint8_t sl, uint8_t scope, uint32_t Q_Key,
				     uint8_t tclass, uint32_t FlowLabel,
				     const ib_gid_t *mgid)
{
	char gid_str[INET6_ADDRSTRLEN];
	ib_member_rec_t mc_rec;
	ib_net64_t comp_mask;
	ib_net16_t pkey;
	osm_mgrp_t *mgrp;
	osm_sa_t *p_sa = &p_subn->p_osm->sa;
	uint8_t hop_limit;

	pkey = p->pkey | FUNC2(0x8000);
	if (!scope)
		scope = OSM_DEFAULT_MGRP_SCOPE;
	hop_limit = (scope == IB_MC_SCOPE_LINK_LOCAL) ? 0 : IB_HOPLIMIT_MAX;

	FUNC8(&mc_rec, 0, sizeof(mc_rec));

	mc_rec.mgid = *mgid;

	mc_rec.qkey = FUNC0(Q_Key);
	mc_rec.mtu = mtu | (IB_PATH_SELECTOR_EXACTLY << 6);
	mc_rec.tclass = tclass;
	mc_rec.pkey = pkey;
	mc_rec.rate = rate | (IB_PATH_SELECTOR_EXACTLY << 6);
	mc_rec.pkt_life = p_subn->opt.subnet_timeout;
	mc_rec.sl_flow_hop = FUNC5(sl, FlowLabel, hop_limit);
	/* Scope in MCMemberRecord (if present) needs to be consistent with MGID */
	mc_rec.scope_state =
	    FUNC4(scope, IB_MC_REC_STATE_FULL_MEMBER);
	FUNC6(&mc_rec.mgid, scope);

	/* don't update rate, mtu */
	comp_mask = IB_MCR_COMPMASK_MTU | IB_MCR_COMPMASK_MTU_SEL |
	    IB_MCR_COMPMASK_RATE | IB_MCR_COMPMASK_RATE_SEL;
	mgrp = FUNC9(p_sa, comp_mask, &mc_rec);
	if (!mgrp) {
		FUNC1(p_log, OSM_LOG_ERROR,
			"Failed to create MC group (%s) with pkey 0x%04x\n",
			FUNC7(AF_INET6, mgid->raw, gid_str, sizeof gid_str),
			FUNC3(pkey));
		return IB_ERROR;
	}

	return (FUNC10(p_log, p, mgrp, p_subn, mgid, pkey));
}