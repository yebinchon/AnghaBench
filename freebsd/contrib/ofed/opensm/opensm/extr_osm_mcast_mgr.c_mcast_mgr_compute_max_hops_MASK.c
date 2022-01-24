#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  is_mc_member; int /*<<< orphan*/  p_node; } ;
typedef  TYPE_1__ osm_switch_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_log; } ;
typedef  TYPE_2__ osm_sm_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mgrp_item ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float FUNC9(osm_sm_t * sm, cl_qmap_t * m,
					const osm_switch_t * this_sw)
{
	uint32_t max_hops = 0, hops;
	uint16_t lid;
	cl_map_item_t *i;
	osm_switch_t *sw;

	FUNC0(sm->p_log);

	/*
	   For each member of the multicast group, compute the
	   number of hops to its base LID.
	 */
	for (i = FUNC5(m); i != FUNC4(m); i = FUNC6(i)) {
		sw = FUNC2(i, sw, mgrp_item);
		lid = FUNC3(FUNC7(sw->p_node, 0));
		hops = FUNC8(this_sw, lid);
		if (!sw->is_mc_member)
			hops += 1;
		if (hops > max_hops)
			max_hops = hops;
	}

	/* Note that at this point we might get (max_hops == 0),
	   which means that there's only one member in the mcast
	   group, and it's the current switch */

	FUNC1(sm->p_log);
	return (float)max_hops;
}