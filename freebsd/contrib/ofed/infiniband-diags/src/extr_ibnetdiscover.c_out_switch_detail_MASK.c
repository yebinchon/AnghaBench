#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numports; int smalid; int smalmc; scalar_t__ smaenhsp0; int /*<<< orphan*/  nodedesc; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ ibnd_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  node_name_map ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(ibnd_node_t * node, char *sw_prefix)
{
	char *nodename = NULL;

	nodename = FUNC3(node_name_map, node->guid, node->nodedesc);

	FUNC0(f, "%sSwitch\t%d %s\t\t# \"%s\" %s port 0 lid %d lmc %d",
		sw_prefix ? sw_prefix : "", node->numports, FUNC2(node),
		nodename, node->smaenhsp0 ? "enhanced" : "base",
		node->smalid, node->smalmc);

	FUNC1(nodename);
}