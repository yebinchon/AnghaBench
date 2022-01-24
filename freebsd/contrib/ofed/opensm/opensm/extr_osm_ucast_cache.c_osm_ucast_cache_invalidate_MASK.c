#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_log; int /*<<< orphan*/  cache_sw_tbl; scalar_t__ cache_valid; } ;
typedef  TYPE_1__ osm_ucast_mgr_t ;
struct TYPE_6__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_2__ cache_switch_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(osm_ucast_mgr_t * p_mgr)
{
	cache_switch_t *p_sw;
	cache_switch_t *p_next_sw;

	FUNC1(p_mgr->p_log);

	if (!p_mgr->cache_valid)
		goto Exit;

	p_mgr->cache_valid = FALSE;

	p_next_sw = (cache_switch_t *) FUNC5(&p_mgr->cache_sw_tbl);
	while (p_next_sw !=
	       (cache_switch_t *) FUNC4(&p_mgr->cache_sw_tbl)) {
		p_sw = p_next_sw;
		p_next_sw = (cache_switch_t *) FUNC6(&p_sw->map_item);
		FUNC3(p_sw);
	}
	FUNC7(&p_mgr->cache_sw_tbl);

	FUNC0(p_mgr->p_log, OSM_LOG_VERBOSE, "Unicast Cache invalidated\n");
Exit:
	FUNC2(p_mgr->p_log);
}