#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mcast_tbl; } ;
typedef  TYPE_2__ osm_switch_t ;
struct TYPE_7__ {TYPE_1__* p_subn; } ;
typedef  TYPE_3__ osm_sm_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_5__ {int max_mcast_lid_ho; int /*<<< orphan*/  sw_guid_tbl; scalar_t__* mboxes; } ;

/* Variables and functions */
 int IB_LID_MCAST_START_HO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(osm_sm_t * sm)
{
	int i;
	cl_map_item_t *item;
	osm_switch_t *p_sw;

	for (i = sm->p_subn->max_mcast_lid_ho - IB_LID_MCAST_START_HO; i >= 0;
	     i--)
		if (sm->p_subn->mboxes[i])
			break;
	if (i < 0)
		return 0;

	/* Now, walk switches and (re)allocate multicast tables */
	for (item = FUNC1(&sm->p_subn->sw_guid_tbl);
	     item != FUNC0(&sm->p_subn->sw_guid_tbl);
	     item = FUNC2(item)) {
		p_sw = (osm_switch_t *) item;
		if (FUNC3(&p_sw->mcast_tbl, i))
			return -1;
	}
	return 0;
}