#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int portnum; struct TYPE_16__* remoteport; TYPE_2__* node; } ;
typedef  TYPE_1__ ibnd_port_t ;
struct TYPE_17__ {int ch_found; int numports; scalar_t__ type; TYPE_1__** ports; int /*<<< orphan*/  ch_type; } ;
typedef  TYPE_2__ ibnd_node_t ;

/* Variables and functions */
 scalar_t__ IB_NODE_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(ibnd_node_t * node)
{
	int p = 0;
	ibnd_port_t *port;
	ibnd_node_t *remnode = 0;

	if (node->ch_found)	/* somehow this node has already been passed */
		return 0;
	node->ch_found = 1;

	/* node is router only in case of using unique lid */
	/* (which is lid of chassis router port) */
	/* in such case node->ports is actually a requested port... */
	if (FUNC5(node))
		/* find the remote node */
		for (p = 1; p <= node->numports; p++) {
			port = node->ports[p];
			if (port && FUNC6(port->remoteport->node))
				FUNC0(node, port->remoteport);
		}
	else if (FUNC6(node)) {
		int is_4700x2 = FUNC7(node);

		for (p = 1; p <= node->numports; p++) {
			port = node->ports[p];
			if (!port || !port->remoteport)
				continue;

			/*
			 * Skip ISR4700 double density fabric boards ports 19-36
			 * as they are chassis external ports
			 */
			if (is_4700x2 && (port->portnum > 18))
				continue;

			remnode = port->remoteport->node;
			if (remnode->type != IB_NODE_SWITCH) {
				if (!remnode->ch_found)
					FUNC0(remnode, port);
				continue;
			}
			if (!node->ch_type)
				/* we assume here that remoteport belongs to line */
				FUNC1(node, port->remoteport);

			/* we could break here, but need to find if more routers connected */
		}

	} else if (FUNC3(node)) {
		int is_4700_line = FUNC4(node);

		for (p = 1; p <= node->numports; p++) {
			port = node->ports[p];
			if (!port || !port->remoteport)
				continue;

			if ((is_4700_line && (port->portnum > 18)) ||
			    (!is_4700_line && (port->portnum > 12)))
				continue;

			/* we assume here that remoteport belongs to spine */
			FUNC2(node, port->remoteport);
			break;
		}
	}

	/* for each port of this node, map external ports */
	for (p = 1; p <= node->numports; p++) {
		port = node->ports[p];
		if (!port)
			continue;
		FUNC8(port);
	}

	return 0;
}