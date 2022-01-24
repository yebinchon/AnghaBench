#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  STEP_CREATE_ID ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  channel ; 
 int connections ; 
 scalar_t__ dst_addr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_4__ hints ; 
 TYPE_1__* nodes ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void)
{
	int ret, i;

	nodes = FUNC0(sizeof *nodes, connections);
	if (!nodes)
		return -ENOMEM;

	FUNC4("creating id\n");
	FUNC8(STEP_CREATE_ID);
	for (i = 0; i < connections; i++) {
		FUNC7(&nodes[i], STEP_CREATE_ID);
		if (dst_addr) {
			ret = FUNC5(channel, &nodes[i].id, &nodes[i],
					     hints.ai_port_space);
			if (ret)
				goto err;
		}
		FUNC1(&nodes[i], STEP_CREATE_ID);
	}
	FUNC2(STEP_CREATE_ID);
	return 0;

err:
	while (--i >= 0)
		FUNC6(nodes[i].id);
	FUNC3(nodes);
	return ret;
}