#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_7__* port; int /*<<< orphan*/  mcm_port_tbl; } ;
typedef  TYPE_1__ osm_mgrp_t ;
struct TYPE_11__ {int /*<<< orphan*/  mgrp_list; } ;
typedef  TYPE_2__ osm_mgrp_box_t ;
typedef  TYPE_1__ osm_mcm_port_t ;
struct TYPE_12__ {int /*<<< orphan*/  map_item; int /*<<< orphan*/  list_item; } ;
typedef  TYPE_4__ osm_mcast_work_obj_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_qlist_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
typedef  int /*<<< orphan*/  cl_list_item_t ;
struct TYPE_13__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (TYPE_7__*) ; 

int FUNC13(cl_qlist_t * list, cl_qmap_t * map,
				     osm_mgrp_box_t * mbox)
{
	cl_map_item_t *map_item;
	cl_list_item_t *list_item;
	osm_mgrp_t *mgrp;
	osm_mcm_port_t *mcm_port;
	osm_mcast_work_obj_t *wobj;

	FUNC9(map);
	FUNC3(list);

	for (list_item = FUNC2(&mbox->mgrp_list);
	     list_item != FUNC1(&mbox->mgrp_list);
	     list_item = FUNC5(list_item)) {
		mgrp = FUNC0(list_item, mgrp, list_item);
		for (map_item = FUNC8(&mgrp->mcm_port_tbl);
		     map_item != FUNC6(&mgrp->mcm_port_tbl);
		     map_item = FUNC11(map_item)) {
			/* Acquire the port object for this port guid, then
			   create the new worker object to build the list. */
			mcm_port = FUNC0(map_item, mcm_port, map_item);
			if (FUNC7(map, mcm_port->port->guid) !=
			    FUNC6(map))
				continue;
			wobj = FUNC12(mcm_port->port);
			if (!wobj)
				return -1;
			FUNC4(list, &wobj->list_item);
			FUNC10(map, mcm_port->port->guid,
				       &wobj->map_item);
		}
	}
	return 0;
}