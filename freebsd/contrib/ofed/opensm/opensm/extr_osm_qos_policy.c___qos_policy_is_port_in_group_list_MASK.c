#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_qos_port_group_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_subn; } ;
typedef  TYPE_1__ osm_qos_policy_t ;
typedef  int /*<<< orphan*/  osm_physp_t ;
typedef  int /*<<< orphan*/  cl_list_t ;
typedef  scalar_t__ cl_list_iterator_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static boolean_t
FUNC5(const osm_qos_policy_t * p_qos_policy,
				   const osm_physp_t * p_physp,
				   cl_list_t * p_port_group_list)
{
	osm_qos_port_group_t *p_port_group;
	cl_list_iterator_t list_iterator;

	list_iterator = FUNC2(p_port_group_list);
	while (list_iterator != FUNC1(p_port_group_list)) {
		p_port_group =
		    (osm_qos_port_group_t *) FUNC4(list_iterator);
		if (p_port_group) {
			if (FUNC0
			    (p_qos_policy->p_subn, p_physp, p_port_group))
				return TRUE;
		}
		list_iterator = FUNC3(list_iterator);
	}
	return FALSE;
}