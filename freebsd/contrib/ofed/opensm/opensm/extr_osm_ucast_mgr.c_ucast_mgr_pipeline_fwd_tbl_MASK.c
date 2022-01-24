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
struct TYPE_6__ {int max_lid; TYPE_1__* p_subn; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
typedef  int /*<<< orphan*/  osm_switch_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_5__ {int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 int IB_SMP_DATA_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC4(osm_ucast_mgr_t * p_mgr)
{
	cl_qmap_t *tbl;
	cl_map_item_t *item;
	unsigned i, max_block = p_mgr->max_lid / IB_SMP_DATA_SIZE + 1;

	tbl = &p_mgr->p_subn->sw_guid_tbl;
	for (i = 0; i < max_block; i++)
		for (item = FUNC1(tbl); item != FUNC0(tbl);
		     item = FUNC2(item))
			FUNC3((osm_switch_t *)item, p_mgr, i);
}