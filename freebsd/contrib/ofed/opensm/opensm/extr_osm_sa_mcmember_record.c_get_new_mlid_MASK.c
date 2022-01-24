#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_11__ {scalar_t__ consolidate_ipv6_snm_req; } ;
struct TYPE_12__ {scalar_t__ max_mcast_lid_ho; int /*<<< orphan*/ * mboxes; TYPE_1__ opt; } ;
typedef  TYPE_2__ osm_subn_t ;
struct TYPE_13__ {TYPE_2__* p_subn; int /*<<< orphan*/  p_log; } ;
typedef  TYPE_3__ osm_sa_t ;
typedef  scalar_t__ ib_net16_t ;
struct TYPE_15__ {int /*<<< orphan*/  raw; } ;
struct TYPE_14__ {TYPE_6__ mgid; scalar_t__ mlid; } ;
typedef  TYPE_4__ ib_member_rec_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ IB_LID_MCAST_START_HO ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static ib_net16_t FUNC7(osm_sa_t * sa, ib_member_rec_t * mcmr)
{
	osm_subn_t *p_subn = sa->p_subn;
	ib_net16_t requested_mlid = mcmr->mlid;
	unsigned i, max;

	if (requested_mlid && FUNC2(requested_mlid) >= IB_LID_MCAST_START_HO
	    && FUNC2(requested_mlid) <= p_subn->max_mcast_lid_ho
	    && !FUNC6(p_subn, requested_mlid))
		return requested_mlid;

	if (sa->p_subn->opt.consolidate_ipv6_snm_req
	    && FUNC5(&mcmr->mgid)
	    && (requested_mlid = FUNC3(sa->p_subn, &mcmr->mgid))) {
		char str[INET6_ADDRSTRLEN];
		FUNC0(sa->p_log, OSM_LOG_DEBUG,
			"Special Case Solicited Node Mcast Join for MGID %s\n",
			FUNC4(AF_INET6, mcmr->mgid.raw, str, sizeof(str)));
		return requested_mlid;
	}

	max = p_subn->max_mcast_lid_ho - IB_LID_MCAST_START_HO + 1;
	for (i = 0; i < max; i++)
		if (!sa->p_subn->mboxes[i])
			return FUNC1(i + IB_LID_MCAST_START_HO);

	return 0;
}