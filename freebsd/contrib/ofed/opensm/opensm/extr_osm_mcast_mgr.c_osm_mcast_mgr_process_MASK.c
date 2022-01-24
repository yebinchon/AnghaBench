#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int mlids_req_max; int /*<<< orphan*/  p_log; int /*<<< orphan*/  p_lock; TYPE_1__* p_subn; scalar_t__* mlids_req; } ;
typedef  TYPE_2__ osm_sm_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {unsigned int max_mcast_lid_ho; int /*<<< orphan*/  p_osm; scalar_t__* mboxes; int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int IB_LID_MCAST_START_HO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(osm_sm_t * sm, boolean_t config_all)
{
	int ret = 0;
	unsigned i;
	unsigned max_mlid;

	FUNC3(sm->p_log);

	FUNC0(sm->p_lock);

	/* If there are no switches in the subnet we have nothing to do. */
	if (FUNC6(&sm->p_subn->sw_guid_tbl) == 0) {
		FUNC2(sm->p_log, OSM_LOG_DEBUG,
			"No switches in subnet. Nothing to do\n");
		goto exit;
	}

	if (FUNC5(sm)) {
		FUNC2(sm->p_log, OSM_LOG_ERROR,
			"ERR 0A09: alloc_mfts failed\n");
		ret = -1;
		goto exit;
	}

	max_mlid = config_all ? sm->p_subn->max_mcast_lid_ho
			- IB_LID_MCAST_START_HO : sm->mlids_req_max;
	for (i = 0; i <= max_mlid; i++) {
		if (sm->mlids_req[i] ||
		    (config_all && sm->p_subn->mboxes[i])) {
			sm->mlids_req[i] = 0;
			FUNC7(sm, i + IB_LID_MCAST_START_HO);
		}
	}

	sm->mlids_req_max = 0;

	ret = FUNC8(sm);

	FUNC9(sm->p_subn->p_osm);

exit:
	FUNC1(sm->p_lock);
	FUNC4(sm->p_log);
	return ret;
}