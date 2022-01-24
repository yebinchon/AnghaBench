#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int is_mc_member; int /*<<< orphan*/  mgrp_item; int /*<<< orphan*/  p_node; int /*<<< orphan*/  num_of_mcm; } ;
typedef  TYPE_5__ osm_switch_t ;
struct TYPE_15__ {TYPE_4__* p_physp; TYPE_1__* p_node; } ;
typedef  TYPE_6__ osm_port_t ;
struct TYPE_16__ {TYPE_6__* p_port; } ;
typedef  TYPE_7__ osm_mcast_work_obj_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_qlist_t ;
typedef  int /*<<< orphan*/  cl_list_item_t ;
struct TYPE_13__ {TYPE_3__* p_remote_physp; } ;
struct TYPE_12__ {TYPE_2__* p_node; } ;
struct TYPE_11__ {TYPE_5__* sw; } ;
struct TYPE_10__ {TYPE_5__* sw; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_item ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(cl_qmap_t * m, cl_qlist_t * port_list)
{
	osm_mcast_work_obj_t *wobj;
	osm_port_t *port;
	osm_switch_t *sw;
	ib_net64_t guid;
	cl_list_item_t *i;

	FUNC6(m);
	for (i = FUNC2(port_list); i != FUNC1(port_list);
	     i = FUNC3(i)) {
		wobj = FUNC0(i, wobj, list_item);
		port = wobj->p_port;
		if (port->p_node->sw) {
			sw = port->p_node->sw;
			sw->is_mc_member = 1;
		} else if (port->p_physp->p_remote_physp) {
			sw = port->p_physp->p_remote_physp->p_node->sw;
			sw->num_of_mcm++;
		} else
			continue;
		guid = FUNC8(sw->p_node);
		if (FUNC5(m, guid) == FUNC4(m))
			FUNC7(m, guid, &sw->mgrp_item);
	}
}