#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ ibnd_port_t ;
struct TYPE_8__ {int numports; TYPE_1__** ports; } ;
typedef  TYPE_2__ ibnd_node_t ;

/* Variables and functions */
 scalar_t__ IB_LINK_DOWN ; 
 int /*<<< orphan*/  IB_PORT_STATE_F ; 
 int /*<<< orphan*/  down_links_only ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*) ; 

void FUNC3(ibnd_node_t * node, void *user_data)
{
	int i = 0;
	int head_print = 0;
	char *out_prefix = (char *)user_data;

	for (i = 1; i <= node->numports; i++) {
		ibnd_port_t *port = node->ports[i];
		if (!port)
			continue;
		if (!down_links_only ||
		    FUNC0(port->info, 0,
				  IB_PORT_STATE_F) == IB_LINK_DOWN) {
			FUNC1(node, &head_print, out_prefix);
			FUNC2(node, port, out_prefix);
		}
	}
}