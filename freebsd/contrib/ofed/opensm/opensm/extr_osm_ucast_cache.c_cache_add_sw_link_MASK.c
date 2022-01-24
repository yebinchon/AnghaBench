#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_16__ {int /*<<< orphan*/  p_log; int /*<<< orphan*/  cache_sw_tbl; } ;
typedef  TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_17__ {size_t port_num; TYPE_7__* p_node; } ;
typedef  TYPE_4__ osm_physp_t ;
struct TYPE_18__ {size_t num_ports; TYPE_2__* ports; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_5__ cache_switch_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_1__* sw; } ;
struct TYPE_15__ {scalar_t__ remote_lid_ho; scalar_t__ is_leaf; } ;
struct TYPE_14__ {int /*<<< orphan*/  num_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_3__*,scalar_t__) ; 
 TYPE_5__* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(osm_ucast_mgr_t * p_mgr, osm_physp_t *p,
			      uint16_t remote_lid_ho, boolean_t is_ca)
{
	cache_switch_t *p_cache_sw;
	uint16_t lid_ho = FUNC6(FUNC8(p->p_node, 0));

	FUNC1(p_mgr->p_log);

	if (!lid_ho || !remote_lid_ho || !p->port_num)
		goto Exit;

	FUNC0(p_mgr->p_log, OSM_LOG_DEBUG,
		"Caching switch port: lid %u [port %u] -> lid %u (%s)\n",
		lid_ho, p->port_num, remote_lid_ho, (is_ca) ? "CA/RTR" : "SW");

	p_cache_sw = FUNC3(p_mgr, lid_ho);
	if (!p_cache_sw) {
		p_cache_sw = FUNC4(lid_ho, p->p_node->sw->num_ports);
		if (!p_cache_sw) {
			FUNC0(p_mgr->p_log, OSM_LOG_ERROR,
				"ERR AD01: Out of memory - cache is invalid\n");
			FUNC9(p_mgr);
			goto Exit;
		}
		FUNC7(&p_mgr->cache_sw_tbl, lid_ho,
			       &p_cache_sw->map_item);
	}

	if (p->port_num >= p_cache_sw->num_ports) {
		FUNC0(p_mgr->p_log, OSM_LOG_ERROR,
			"ERR AD02: Wrong switch? - cache is invalid\n");
		FUNC9(p_mgr);
		goto Exit;
	}

	if (is_ca)
		FUNC5(p_cache_sw);

	if (p_cache_sw->ports[p->port_num].remote_lid_ho == 0) {
		/* cache this link only if it hasn't been already cached */
		p_cache_sw->ports[p->port_num].remote_lid_ho = remote_lid_ho;
		p_cache_sw->ports[p->port_num].is_leaf = is_ca;
	}
Exit:
	FUNC2(p_mgr->p_log);
}