#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ is_mc_member; scalar_t__ num_of_mcm; } ;
typedef  TYPE_1__ osm_switch_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mgrp_item ; 

__attribute__((used)) static void FUNC5(cl_qmap_t * m)
{
	osm_switch_t *sw;
	cl_map_item_t *i;

	for (i = FUNC2(m); i != FUNC1(m); i = FUNC3(i)) {
		sw = FUNC0(i, sw, mgrp_item);
		sw->num_of_mcm = 0;
		sw->is_mc_member = 0;
	}
	FUNC4(m);
}