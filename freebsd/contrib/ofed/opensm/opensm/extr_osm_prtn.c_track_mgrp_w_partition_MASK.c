#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_subn_t ;
struct TYPE_10__ {int nmgrps; TYPE_2__** mgrps; } ;
typedef  TYPE_1__ osm_prtn_t ;
struct TYPE_11__ {int /*<<< orphan*/  well_known; } ;
typedef  TYPE_2__ osm_mgrp_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  ib_net16_t ;
struct TYPE_12__ {int /*<<< orphan*/  raw; } ;
typedef  TYPE_3__ ib_gid_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IB_ERROR ; 
 int /*<<< orphan*/  IB_SUCCESS ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__** FUNC4 (TYPE_2__**,int) ; 

__attribute__((used)) static ib_api_status_t
FUNC5(osm_log_t *p_log, osm_prtn_t *p, osm_mgrp_t *mgrp,
			osm_subn_t *p_subn, const ib_gid_t *mgid,
			ib_net16_t pkey)
{
	char gid_str[INET6_ADDRSTRLEN];
	osm_mgrp_t **tmp;
	int i = 0;

	/* check if we are already tracking this group */
	for (i = 0; i < p->nmgrps; i++)
		if (p->mgrps[i] == mgrp)
			return (IB_SUCCESS);

	/* otherwise add it to our list */
	tmp = FUNC4(p->mgrps, (p->nmgrps +1) * sizeof(*p->mgrps));
	if (tmp) {
		p->mgrps = tmp;
		p->mgrps[p->nmgrps] = mgrp;
		p->nmgrps++;
	} else {
		FUNC0(p_log, OSM_LOG_ERROR,
			"realloc error to create MC group (%s) in "
			"partition (pkey 0x%04x)\n",
			FUNC2(AF_INET6, mgid->raw,
				  gid_str, sizeof gid_str),
			FUNC1(pkey));
		mgrp->well_known = FALSE;
		FUNC3(p_subn, mgrp);
		return (IB_ERROR);
	}
	mgrp->well_known = TRUE;
	return (IB_SUCCESS);
}