#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p_log; int /*<<< orphan*/  cache_sw_tbl; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_9__ {unsigned int num_ports; TYPE_1__* ports; scalar_t__ dropped; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ cache_switch_t ;
struct TYPE_7__ {char* remote_lid_ho; scalar_t__ is_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(osm_ucast_mgr_t * p_mgr)
{
	cache_switch_t *p_sw;
	unsigned i;

	FUNC1(p_mgr->p_log);

	if (!FUNC3(p_mgr->p_log, OSM_LOG_DEBUG))
		goto Exit;

	FUNC0(p_mgr->p_log, OSM_LOG_DEBUG,
		"Dumping missing nodes/links as logged by unicast cache:\n");
	for (p_sw = (cache_switch_t *) FUNC7(&p_mgr->cache_sw_tbl);
	     p_sw != (cache_switch_t *) FUNC6(&p_mgr->cache_sw_tbl);
	     p_sw = (cache_switch_t *) FUNC8(&p_sw->map_item)) {

		FUNC0(p_mgr->p_log, OSM_LOG_DEBUG,
			"\t Switch lid %u %s%s\n",
			FUNC4(p_sw),
			(FUNC5(p_sw)) ? "[leaf switch] " : "",
			(p_sw->dropped) ? "[whole switch missing]" : "");

		for (i = 1; i < p_sw->num_ports; i++)
			if (p_sw->ports[i].remote_lid_ho > 0)
				FUNC0(p_mgr->p_log,
					OSM_LOG_DEBUG,
					"\t     - port %u -> lid %u %s\n",
					i, p_sw->ports[i].remote_lid_ho,
					(p_sw->ports[i].is_leaf) ?
					"[remote node is leaf]" : "");
	}
Exit:
	FUNC2(p_mgr->p_log);
}