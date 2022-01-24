#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  port_map; int /*<<< orphan*/  map_item; struct TYPE_5__* use; struct TYPE_5__* name; } ;
typedef  TYPE_1__ osm_qos_port_t ;
typedef  TYPE_1__ osm_qos_port_group_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(osm_qos_port_group_t * p)
{
	osm_qos_port_t * p_port;
	osm_qos_port_t * p_old_port;

	if (!p)
		return;

	if (p->name)
		FUNC4(p->name);
	if (p->use)
		FUNC4(p->use);

	p_port = (osm_qos_port_t *) FUNC1(&p->port_map);
	while (p_port != (osm_qos_port_t *) FUNC0(&p->port_map))
	{
		p_old_port = p_port;
		p_port = (osm_qos_port_t *) FUNC2(&p_port->map_item);
		FUNC4(p_old_port);
	}
	FUNC3(&p->port_map);

	FUNC4(p);
}