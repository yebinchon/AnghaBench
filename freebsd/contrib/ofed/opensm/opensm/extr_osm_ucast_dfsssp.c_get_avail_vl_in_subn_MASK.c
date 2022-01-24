#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_1__* p_subn; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_node; } ;
typedef  TYPE_3__ osm_switch_t ;
struct TYPE_10__ {int /*<<< orphan*/  port_info; scalar_t__ p_remote_physp; } ;
typedef  TYPE_4__ osm_physp_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_7__ {int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t FUNC6(osm_ucast_mgr_t * p_mgr)
{
	uint32_t i = 0;
	uint8_t vls_avail = 0xFF, port_vls_avail = 0;
	cl_qmap_t *sw_tbl = &p_mgr->p_subn->sw_guid_tbl;
	cl_map_item_t *item = NULL;
	osm_switch_t *sw = NULL;

	/* traverse all switches to get the number of available virtual lanes in the subnet */
	for (item = FUNC1(sw_tbl); item != FUNC0(sw_tbl);
	     item = FUNC2(item)) {
		sw = (osm_switch_t *) item;

		/* ignore management port 0 */
		for (i = 1; i < FUNC4(sw->p_node); i++) {
			osm_physp_t *p_physp =
			    FUNC5(sw->p_node, i);

			if (p_physp && p_physp->p_remote_physp) {
				port_vls_avail =
				    FUNC3(&p_physp->
							    port_info);
				if (port_vls_avail
				    && port_vls_avail < vls_avail)
					vls_avail = port_vls_avail;
			}
		}
	}

	/* ib_port_info_get_op_vls gives values 1 ... 5 (s. IBAS 14.2.5.6) */
	vls_avail = 1 << (vls_avail - 1);

	/* set boundaries (s. IBAS 3.5.7) */
	if (vls_avail > 15)
		vls_avail = 15;
	if (vls_avail < 1)
		vls_avail = 1;

	return vls_avail;
}