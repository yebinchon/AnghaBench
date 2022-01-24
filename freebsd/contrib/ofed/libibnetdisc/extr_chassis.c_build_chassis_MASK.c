#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int portnum; TYPE_1__* remoteport; } ;
typedef  TYPE_2__ ibnd_port_t ;
struct TYPE_10__ {int numports; int /*<<< orphan*/  ch_found; TYPE_2__** ports; } ;
typedef  TYPE_3__ ibnd_node_t ;
typedef  int /*<<< orphan*/  ibnd_chassis_t ;
struct TYPE_8__ {TYPE_3__* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(ibnd_node_t * node, ibnd_chassis_t * chassis)
{
	int p = 0;
	ibnd_node_t *remnode = 0;
	ibnd_port_t *port = 0;

	/* we get here with node = chassis_spine */
	if (FUNC1(node, chassis))
		return -1;

	/* loop: pass on all ports of node */
	for (p = 1; p <= node->numports; p++) {

		port = node->ports[p];
		if (!port || !port->remoteport)
			continue;

		/*
		 * ISR4700 double density fabric board ports 19-36 are
		 * chassis external ports, so skip them
		 */
		if (FUNC2(node) && (port->portnum > 18))
			continue;

		remnode = port->remoteport->node;

		if (!remnode->ch_found)
			continue;	/* some error - line or router not initialized ? FIXME */

		FUNC0(remnode, chassis);
	}

	if (FUNC3(chassis))
		return -1;
	/* this pass needed for to catch routers, since routers connected only */
	/* to spines in slot 1 or 4 and we could miss them first time */
	if (FUNC4(chassis))
		return -1;

	/* additional 2 passes needed for to overcome a problem of pure "in-chassis" */
	/* connectivity - extra pass to ensure that all related chips/modules */
	/* inserted into the chassis */
	if (FUNC3(chassis))
		return -1;
	if (FUNC4(chassis))
		return -1;
	FUNC5(chassis);

	return 0;
}