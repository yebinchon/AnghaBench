#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_5__* node; TYPE_2__* p_sw; } ;
typedef  TYPE_4__ switch_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_15__ {TYPE_3__** links; void* axes; } ;
typedef  TYPE_5__ mesh_node_t ;
typedef  int /*<<< orphan*/  link_t ;
struct TYPE_16__ {TYPE_1__* p_osm; } ;
typedef  TYPE_6__ lash_t ;
struct TYPE_13__ {int /*<<< orphan*/  switch_id; } ;
struct TYPE_12__ {unsigned int num_ports; } ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_4__*) ; 

int FUNC5(lash_t *p_lash, switch_t *sw)
{
	osm_log_t *p_log = &p_lash->p_osm->log;
	unsigned i;
	mesh_node_t *node;
	unsigned num_ports = sw->p_sw->num_ports;

	FUNC1(p_log);

	if (!(node = sw->node = FUNC3(1, sizeof(mesh_node_t) + num_ports * sizeof(link_t *))))
		goto err;

	for (i = 0; i < num_ports; i++)
		if (!(node->links[i] = FUNC3(1, sizeof(link_t) + num_ports * sizeof(int))))
			goto err;

	if (!(node->axes = FUNC3(num_ports, sizeof(int))))
		goto err;

	for (i = 0; i < num_ports; i++) {
		node->links[i]->switch_id = NONE;
	}

	FUNC2(p_log);
	return 0;

err:
	FUNC4(p_lash, sw);
	FUNC0(p_log, OSM_LOG_ERROR,
		"Failed allocating mesh node - out of memory\n");
	FUNC2(p_log);
	return -1;
}