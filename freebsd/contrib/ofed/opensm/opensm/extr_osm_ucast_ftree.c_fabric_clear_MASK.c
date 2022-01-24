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
struct TYPE_11__ {int /*<<< orphan*/  item; } ;
typedef  TYPE_1__ name_map_item_t ;
struct TYPE_12__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_2__ ftree_sw_tbl_element_t ;
struct TYPE_13__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ ftree_sw_t ;
struct TYPE_14__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_4__ ftree_hca_t ;
struct TYPE_15__ {scalar_t__ leaf_switches_num; int /*<<< orphan*/  fabric_built; TYPE_1__* leaf_switches; scalar_t__ lft_max_lid; scalar_t__ max_cn_per_leaf; scalar_t__ max_switch_rank; scalar_t__ leaf_switch_rank; scalar_t__ ca_ports; scalar_t__ cn_num; int /*<<< orphan*/  io_guid_tbl; int /*<<< orphan*/  cn_guid_tbl; int /*<<< orphan*/  sw_by_tuple_tbl; int /*<<< orphan*/  sw_tbl; int /*<<< orphan*/  hca_tbl; } ;
typedef  TYPE_5__ ftree_fabric_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(ftree_fabric_t * p_ftree)
{
	ftree_hca_t *p_hca;
	ftree_hca_t *p_next_hca;
	ftree_sw_t *p_sw;
	ftree_sw_t *p_next_sw;
	ftree_sw_tbl_element_t *p_element;
	ftree_sw_tbl_element_t *p_next_element;
	name_map_item_t *p_guid_element, *p_next_guid_element;

	if (!p_ftree)
		return;

	/* remove all the elements of hca_tbl */

	p_next_hca = (ftree_hca_t *) FUNC1(&p_ftree->hca_tbl);
	while (p_next_hca != (ftree_hca_t *) FUNC0(&p_ftree->hca_tbl)) {
		p_hca = p_next_hca;
		p_next_hca = (ftree_hca_t *) FUNC2(&p_hca->map_item);
		FUNC5(p_hca);
	}
	FUNC3(&p_ftree->hca_tbl);

	/* remove all the elements of sw_tbl */

	p_next_sw = (ftree_sw_t *) FUNC1(&p_ftree->sw_tbl);
	while (p_next_sw != (ftree_sw_t *) FUNC0(&p_ftree->sw_tbl)) {
		p_sw = p_next_sw;
		p_next_sw = (ftree_sw_t *) FUNC2(&p_sw->map_item);
		FUNC6(p_sw);
	}
	FUNC3(&p_ftree->sw_tbl);

	/* remove all the elements of sw_by_tuple_tbl */

	p_next_element =
	    (ftree_sw_tbl_element_t *) FUNC1(&p_ftree->sw_by_tuple_tbl);
	while (p_next_element != (ftree_sw_tbl_element_t *)
	       FUNC0(&p_ftree->sw_by_tuple_tbl)) {
		p_element = p_next_element;
		p_next_element = (ftree_sw_tbl_element_t *)
		    FUNC2(&p_element->map_item);
		FUNC7(p_element);
	}
	FUNC3(&p_ftree->sw_by_tuple_tbl);

	/* remove all the elements of cn_guid_tbl */
	p_next_guid_element =
	    (name_map_item_t *) FUNC1(&p_ftree->cn_guid_tbl);
	while (p_next_guid_element !=
	       (name_map_item_t *) FUNC0(&p_ftree->cn_guid_tbl)) {
		p_guid_element = p_next_guid_element;
		p_next_guid_element =
		    (name_map_item_t *) FUNC2(&p_guid_element->item);
		FUNC4(p_guid_element);
	}
	FUNC3(&p_ftree->cn_guid_tbl);

	/* remove all the elements of io_guid_tbl */
	p_next_guid_element =
	    (name_map_item_t *) FUNC1(&p_ftree->io_guid_tbl);
	while (p_next_guid_element !=
	       (name_map_item_t *) FUNC0(&p_ftree->io_guid_tbl)) {
		p_guid_element = p_next_guid_element;
		p_next_guid_element =
		    (name_map_item_t *) FUNC2(&p_guid_element->item);
		FUNC4(p_guid_element);
	}
	FUNC3(&p_ftree->io_guid_tbl);

	/* free the leaf switches array */
	if ((p_ftree->leaf_switches_num > 0) && (p_ftree->leaf_switches))
		FUNC4(p_ftree->leaf_switches);

	p_ftree->leaf_switches_num = 0;
	p_ftree->cn_num = 0;
	p_ftree->ca_ports = 0;
	p_ftree->leaf_switch_rank = 0;
	p_ftree->max_switch_rank = 0;
	p_ftree->max_cn_per_leaf = 0;
	p_ftree->lft_max_lid = 0;
	p_ftree->leaf_switches = NULL;
	p_ftree->fabric_built = FALSE;

}