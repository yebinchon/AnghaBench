#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct fabric {TYPE_1__* osm; } ;
struct TYPE_12__ {int /*<<< orphan*/ * p_node; int /*<<< orphan*/ * priv; } ;
typedef  TYPE_2__ osm_switch_t ;
struct TYPE_13__ {int /*<<< orphan*/  sw_guid_tbl; int /*<<< orphan*/  port_guid_tbl; } ;
typedef  TYPE_3__ osm_subn_t ;
struct TYPE_14__ {TYPE_5__* p_physp; int /*<<< orphan*/ * priv; } ;
typedef  TYPE_4__ osm_port_t ;
struct TYPE_15__ {scalar_t__ port_num; int /*<<< orphan*/ * p_node; struct TYPE_15__* p_remote_physp; } ;
typedef  TYPE_5__ osm_physp_t ;
typedef  int /*<<< orphan*/  osm_node_t ;
typedef  int /*<<< orphan*/  guid_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; TYPE_3__ subn; } ;

/* Variables and functions */
 scalar_t__ IB_NODE_TYPE_CA ; 
 scalar_t__ IB_NODE_TYPE_ROUTER ; 
 scalar_t__ IB_NODE_TYPE_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fabric*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct fabric*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fabric*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fabric*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*) ; 

__attribute__((used)) static
bool FUNC15(struct fabric *fabric)
{
	osm_subn_t *subnet = &fabric->osm->subn;
	osm_switch_t *osm_sw;
	osm_physp_t *lphysp, *rphysp;
	osm_port_t *lport;
	osm_node_t *osm_node;
	cl_map_item_t *item;
	uint8_t ltype, rtype;
	int p, port_cnt;
	guid_t sw_guid;
	bool success = true;

	FUNC0(&fabric->osm->log);

	/*
	 * On OpenSM data structures:
	 *
	 * Apparently, every port in a fabric has an associated osm_physp_t,
	 * but not every port has an associated osm_port_t.  Apparently every
	 * osm_port_t has an associated osm_physp_t.
	 *
	 * So, in order to find the inter-switch links we need to walk the
	 * switch list and examine each port, via its osm_physp_t object.
	 *
	 * But, we need to associate our CA and switch management port
	 * endpoints with the corresponding osm_port_t objects, in order
	 * to simplify computation of LFT entries and perform SL lookup for
	 * path records. Since it is apparently difficult to locate the
	 * osm_port_t that corresponds to a given osm_physp_t, we also
	 * need to walk the list of ports indexed by GUID to get access
	 * to the appropriate osm_port_t objects.
	 *
	 * Need to allocate our switches before we do anything else.
	 */
	item = FUNC7(&subnet->sw_guid_tbl);
	while (item != FUNC6(&subnet->sw_guid_tbl)) {

		osm_sw = (osm_switch_t *)item;
		item = FUNC8(item);
		osm_sw->priv = NULL;  /* avoid stale pointer dereferencing */
		osm_node = osm_sw->p_node;

		if (FUNC12(osm_node) != IB_NODE_TYPE_SWITCH)
			continue;

		port_cnt = FUNC10(osm_node);
		sw_guid = FUNC9(osm_node);

		success = FUNC2(fabric, sw_guid, port_cnt);
		if (!success)
			goto out;
	}
	/*
	 * Now build all our endpoints.
	 */
	item = FUNC7(&subnet->port_guid_tbl);
	while (item != FUNC6(&subnet->port_guid_tbl)) {

		lport = (osm_port_t *)item;
		item = FUNC8(item);
		lport->priv = NULL;  /* avoid stale pointer dereferencing */

		lphysp = lport->p_physp;
		if (!(lphysp && FUNC14(lphysp)))
			continue;

		ltype = FUNC12(lphysp->p_node);
		/*
		 * Switch management port is always port 0.
		 */
		if (lphysp->port_num == 0 && ltype == IB_NODE_TYPE_SWITCH) {
			success = FUNC5(fabric, lport);
			if (!success)
				goto out;
			continue;
		}
		rphysp = lphysp->p_remote_physp;
		if (!(rphysp && FUNC14(rphysp)))
			continue;

		rtype = FUNC12(rphysp->p_node);

		if ((ltype != IB_NODE_TYPE_CA &&
		     ltype != IB_NODE_TYPE_ROUTER) ||
		    rtype != IB_NODE_TYPE_SWITCH)
			continue;

		success =
			FUNC3(fabric, lport,
				      FUNC9(rphysp->p_node),
				      FUNC13(rphysp));
		if (!success)
			goto out;
	}
	/*
	 * Lastly, build all our interswitch links.
	 */
	item = FUNC7(&subnet->sw_guid_tbl);
	while (item != FUNC6(&subnet->sw_guid_tbl)) {

		osm_sw = (osm_switch_t *)item;
		item = FUNC8(item);

		port_cnt = FUNC10(osm_sw->p_node);
		for (p = 0; p < port_cnt; p++) {

			lphysp = FUNC11(osm_sw->p_node, p);
			if (!(lphysp && FUNC14(lphysp)))
				continue;

			rphysp = lphysp->p_remote_physp;
			if (!(rphysp && FUNC14(rphysp)))
				continue;

			if (lphysp == rphysp)
				continue;	/* ignore loopbacks */

			ltype = FUNC12(lphysp->p_node);
			rtype = FUNC12(rphysp->p_node);

			if (ltype != IB_NODE_TYPE_SWITCH ||
			    rtype != IB_NODE_TYPE_SWITCH)
				continue;

			success =
				FUNC4(fabric,
					   FUNC9(lphysp->p_node),
					   FUNC13(lphysp),
					   FUNC9(rphysp->p_node),
					   FUNC13(rphysp));
			if (!success)
				goto out;
		}
	}
out:
	FUNC1(&fabric->osm->log);
	return success;
}