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
struct TYPE_7__ {int /*<<< orphan*/  cache_sw_tbl; int /*<<< orphan*/  cache_valid; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_8__ {unsigned int num_ports; int /*<<< orphan*/  map_item; TYPE_1__* ports; } ;
typedef  TYPE_3__ cache_switch_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {scalar_t__ remote_lid_ho; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(osm_ucast_mgr_t * p_mgr)
{
	cache_switch_t *p_sw;
	cache_switch_t *p_next_sw;
	unsigned port_num;
	boolean_t found_port;

	if (!p_mgr->cache_valid)
		return;

	p_next_sw = (cache_switch_t *) FUNC2(&p_mgr->cache_sw_tbl);
	while (p_next_sw !=
	       (cache_switch_t *) FUNC1(&p_mgr->cache_sw_tbl)) {
		p_sw = p_next_sw;
		p_next_sw = (cache_switch_t *) FUNC3(&p_sw->map_item);

		found_port = FALSE;
		for (port_num = 1; port_num < p_sw->num_ports; port_num++)
			if (p_sw->ports[port_num].remote_lid_ho)
				found_port = TRUE;

		if (!found_port) {
			FUNC4(&p_mgr->cache_sw_tbl,
					    &p_sw->map_item);
			FUNC0(p_sw);
		}
	}
}