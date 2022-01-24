#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  st_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_node_hash; TYPE_1__* p_subn; } ;
typedef  TYPE_2__ osm_qos_policy_t ;
struct TYPE_7__ {scalar_t__ print_desc; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ osm_node_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
struct TYPE_5__ {int /*<<< orphan*/  node_guid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(osm_qos_policy_t * p_qos_policy)
{
	osm_node_t * p_node;
	cl_qmap_t  * p_node_guid_tbl = &p_qos_policy->p_subn->node_guid_tbl;

	p_qos_policy->p_node_hash = FUNC5();
	FUNC0(p_qos_policy->p_node_hash);

	if (!p_node_guid_tbl || !FUNC1(p_node_guid_tbl))
		return;

	for (p_node = (osm_node_t *) FUNC3(p_node_guid_tbl);
	     p_node != (osm_node_t *) FUNC2(p_node_guid_tbl);
	     p_node = (osm_node_t *) FUNC4(&p_node->map_item)) {
		if (!FUNC7(p_qos_policy->p_node_hash,
			      (st_data_t)p_node->print_desc, NULL))
			FUNC6(p_qos_policy->p_node_hash,
				  (st_data_t)p_node->print_desc,
				  (st_data_t)p_node);
	}
}