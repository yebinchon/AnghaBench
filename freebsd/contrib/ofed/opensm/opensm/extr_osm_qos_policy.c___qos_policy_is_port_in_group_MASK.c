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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  osm_subn_t ;
struct TYPE_3__ {int node_types; int /*<<< orphan*/  port_map; } ;
typedef  TYPE_1__ osm_qos_port_group_t ;
typedef  int /*<<< orphan*/  osm_physp_t ;
typedef  int /*<<< orphan*/  osm_node_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static boolean_t
FUNC6(osm_subn_t * p_subn,
			      const osm_physp_t * p_physp,
			      osm_qos_port_group_t * p_port_group)
{
	osm_node_t *p_node = FUNC4(p_physp);
	ib_net64_t port_guid = FUNC5(p_physp);
	uint64_t port_guid_ho = FUNC0(port_guid);

	/* check whether this port's type matches any of group's types */

	if ( p_port_group->node_types &
	     (((uint8_t)1)<<FUNC3(p_node)) )
		return TRUE;

	/* check whether this port's guid is in group's port map */

	if (FUNC2(&p_port_group->port_map, port_guid_ho) !=
	    FUNC1(&p_port_group->port_map))
		return TRUE;

	return FALSE;
}