#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_ports; int /*<<< orphan*/  p_node; } ;
typedef  TYPE_1__ osm_switch_t ;
struct TYPE_5__ {int hop_wf; } ;
typedef  TYPE_2__ osm_physp_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(cl_map_item_t * p_map_item, void *ctx)
{
	osm_switch_t *sw = (osm_switch_t *) p_map_item;
	int i;

	for (i = 1; i < sw->num_ports; i++) {
		osm_physp_t *p = FUNC0(sw->p_node, i);
		if (p)
			p->hop_wf = 1;
	}
}