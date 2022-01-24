#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_port_t ;
struct TYPE_7__ {int /*<<< orphan*/ * port; int /*<<< orphan*/  mcm_port_tbl; } ;
typedef  TYPE_1__ osm_mgrp_t ;
struct TYPE_8__ {int /*<<< orphan*/  mgrp_list; } ;
typedef  TYPE_2__ osm_mgrp_box_t ;
typedef  TYPE_1__ osm_mcm_port_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
typedef  int /*<<< orphan*/  cl_list_item_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_item ; 
 int /*<<< orphan*/  map_item ; 

__attribute__((used)) static
osm_port_t *FUNC7(osm_mgrp_box_t *mgb,
			       cl_list_item_t **list_iterator,
			       cl_map_item_t **map_iterator)
{
	osm_mgrp_t *mgrp;
	osm_mcm_port_t *mcm_port;
	osm_port_t *osm_port = NULL;
	cl_map_item_t *m_item = *map_iterator;
	cl_list_item_t *l_item = *list_iterator;

next_mgrp:
	if (!l_item)
		l_item = FUNC2(&mgb->mgrp_list);
	if (l_item == FUNC1(&mgb->mgrp_list)) {
		l_item = NULL;
		goto out;
	}
	mgrp = FUNC0(l_item, mgrp, list_item);

	if (!m_item)
		m_item = FUNC5(&mgrp->mcm_port_tbl);
	if (m_item == FUNC4(&mgrp->mcm_port_tbl)) {
		m_item = NULL;
		l_item = FUNC3(l_item);
		goto next_mgrp;
	}
	mcm_port = FUNC0(m_item, mcm_port, map_item);
	m_item = FUNC6(m_item);
	osm_port = mcm_port->port;
out:
	*list_iterator = l_item;
	*map_iterator = m_item;
	return osm_port;
}