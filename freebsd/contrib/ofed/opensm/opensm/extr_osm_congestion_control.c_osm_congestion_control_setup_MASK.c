#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  congestion_control; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_guid_tbl; TYPE_1__ opt; } ;
struct osm_opensm {int /*<<< orphan*/  log; int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; TYPE_2__ subn; int /*<<< orphan*/  routing_engine_used; } ;
struct TYPE_6__ {int /*<<< orphan*/  p_physp; scalar_t__ cc_unavailable_flag; int /*<<< orphan*/ * p_node; } ;
typedef  TYPE_3__ osm_port_t ;
typedef  int /*<<< orphan*/  osm_node_t ;
typedef  scalar_t__ ib_api_status_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 scalar_t__ IB_NODE_TYPE_CA ; 
 scalar_t__ IB_NODE_TYPE_SWITCH ; 
 scalar_t__ IB_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct osm_opensm *p_osm)
{
	cl_qmap_t *p_tbl;
	cl_map_item_t *p_next;
	int ret = 0;

	if (!p_osm->subn.opt.congestion_control)
		return 0;

	FUNC0(&p_osm->log);

	/*
	 * Do nothing unless the most recent routing attempt was successful.
	 */
	if (!p_osm->routing_engine_used)
		return 0;

	FUNC5(&p_osm->sm);

	FUNC6(&p_osm->lock);

	p_tbl = &p_osm->subn.port_guid_tbl;
	p_next = FUNC9(p_tbl);
	while (p_next != FUNC8(p_tbl)) {
		osm_port_t *p_port = (osm_port_t *) p_next;
		osm_node_t *p_node = p_port->p_node;
		ib_api_status_t status;

		p_next = FUNC10(p_next);

		if (p_port->cc_unavailable_flag)
			continue;

		if (FUNC11(p_node) == IB_NODE_TYPE_SWITCH) {
			status = FUNC4(&p_osm->sm, p_node);
			if (status != IB_SUCCESS)
				ret = -1;
		} else if (FUNC11(p_node) == IB_NODE_TYPE_CA) {
			status = FUNC2(&p_osm->sm,
							 p_node,
							 p_port->p_physp);
			if (status != IB_SUCCESS)
				ret = -1;

			status = FUNC3(&p_osm->sm,
					     p_node,
					     p_port->p_physp);
			if (status != IB_SUCCESS)
				ret = -1;
		}
	}

	FUNC7(&p_osm->lock);

	FUNC1(&p_osm->log);

	return ret;
}