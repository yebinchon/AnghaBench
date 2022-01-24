#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_21__ {int /*<<< orphan*/  p_log; int /*<<< orphan*/  cache_valid; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_22__ {struct TYPE_22__* p_remote_physp; TYPE_4__* p_node; } ;
typedef  TYPE_3__ osm_physp_t ;
struct TYPE_23__ {TYPE_1__* sw; } ;
typedef  TYPE_4__ osm_node_t ;
struct TYPE_24__ {int /*<<< orphan*/  max_lid_ho; int /*<<< orphan*/ * lft; int /*<<< orphan*/ * hops; scalar_t__ num_hops; int /*<<< orphan*/  dropped; } ;
typedef  TYPE_5__ cache_switch_t ;
struct TYPE_20__ {int /*<<< orphan*/  max_lid_ho; scalar_t__ lft_size; int /*<<< orphan*/ * lft; int /*<<< orphan*/ * new_lft; int /*<<< orphan*/ * hops; scalar_t__ num_hops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IB_NODE_TYPE_SWITCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*) ; 
 TYPE_3__* FUNC9 (TYPE_4__*,int) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void FUNC13(osm_ucast_mgr_t * p_mgr, osm_node_t * p_node)
{
	uint16_t lid_ho;
	uint8_t max_ports;
	uint8_t port_num;
	osm_physp_t *p_physp;
	cache_switch_t *p_cache_sw;

	FUNC2(p_mgr->p_log);

	if (!p_mgr->cache_valid)
		goto Exit;

	if (FUNC10(p_node) == IB_NODE_TYPE_SWITCH) {

		lid_ho = FUNC6(FUNC7(p_node, 0));

		if (!lid_ho) {
			FUNC1(p_mgr->p_log, OSM_LOG_VERBOSE,
				"Skip caching. Switch dropped before "
				"it gets a valid lid.\n");
			FUNC12(p_mgr);
			goto Exit;
		}

		FUNC1(p_mgr->p_log, OSM_LOG_DEBUG,
			"Caching dropped switch lid %u\n", lid_ho);

		if (!p_node->sw) {
			/* something is wrong - forget about cache */
			FUNC1(p_mgr->p_log, OSM_LOG_ERROR,
				"ERR AD03: no switch info for node lid %u - "
				"clearing cache\n", lid_ho);
			FUNC12(p_mgr);
			goto Exit;
		}

		/* unlink (add to cache) all the ports of this switch */
		max_ports = FUNC8(p_node);
		for (port_num = 1; port_num < max_ports; port_num++) {

			p_physp = FUNC9(p_node, port_num);
			if (!p_physp || !p_physp->p_remote_physp)
				continue;

			FUNC11(p_mgr, p_physp,
						 p_physp->p_remote_physp);
		}

		/*
		 * All the ports have been dropped (cached).
		 * If one of the ports was connected to CA/RTR,
		 * then the cached switch would be marked as leaf.
		 * If it isn't, then the dropped switch isn't a leaf,
		 * and cache can't handle it.
		 */

		p_cache_sw = FUNC4(p_mgr, lid_ho);

		/* p_cache_sw could be NULL if it has no remote phys ports */
		if (!p_cache_sw || !FUNC5(p_cache_sw)) {
			FUNC1(p_mgr->p_log, OSM_LOG_DEBUG,
				"Dropped non-leaf switch (lid %u)\n", lid_ho);
			FUNC12(p_mgr);
			goto Exit;
		}

		p_cache_sw->dropped = TRUE;

		if (!p_node->sw->num_hops || !p_node->sw->hops) {
			FUNC1(p_mgr->p_log, OSM_LOG_DEBUG,
				"No LID matrices for switch lid %u\n", lid_ho);
			FUNC12(p_mgr);
			goto Exit;
		}

		/* lid matrices */

		p_cache_sw->num_hops = p_node->sw->num_hops;
		p_node->sw->num_hops = 0;
		p_cache_sw->hops = p_node->sw->hops;
		p_node->sw->hops = NULL;

		/* linear forwarding table */

		if (p_node->sw->new_lft) {
			/* LFT buffer exists - we use it, because
			   it is more updated than the switch's LFT */
			p_cache_sw->lft = p_node->sw->new_lft;
			p_node->sw->new_lft = NULL;
		} else {
			/* no LFT buffer, so we use the switch's LFT */
			p_cache_sw->lft = p_node->sw->lft;
			p_node->sw->lft = NULL;
			p_node->sw->lft_size = 0;
		}
		p_cache_sw->max_lid_ho = p_node->sw->max_lid_ho;
	} else {
		/* dropping CA/RTR: add to cache all the ports of this node */
		max_ports = FUNC8(p_node);
		for (port_num = 1; port_num < max_ports; port_num++) {

			p_physp = FUNC9(p_node, port_num);
			if (!p_physp || !p_physp->p_remote_physp)
				continue;

			FUNC0(FUNC10
				  (p_physp->p_remote_physp->p_node) ==
				  IB_NODE_TYPE_SWITCH);

			FUNC11(p_mgr,
						 p_physp->p_remote_physp,
						 p_physp);
		}
	}
Exit:
	FUNC3(p_mgr->p_log);
}