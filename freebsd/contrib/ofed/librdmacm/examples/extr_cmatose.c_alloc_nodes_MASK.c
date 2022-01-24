#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_8__ {int id; int /*<<< orphan*/  cma_id; } ;
struct TYPE_7__ {TYPE_2__* nodes; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int connections ; 
 scalar_t__ dst_addr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_5__ hints ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret, i;

	test.nodes = FUNC1(sizeof *test.nodes * connections);
	if (!test.nodes) {
		FUNC3("cmatose: unable to allocate memory for test nodes\n");
		return -ENOMEM;
	}
	FUNC2(test.nodes, 0, sizeof *test.nodes * connections);

	for (i = 0; i < connections; i++) {
		test.nodes[i].id = i;
		if (dst_addr) {
			ret = FUNC4(test.channel,
					     &test.nodes[i].cma_id,
					     &test.nodes[i], hints.ai_port_space);
			if (ret)
				goto err;
		}
	}
	return 0;
err:
	while (--i >= 0)
		FUNC5(test.nodes[i].cma_id);
	FUNC0(test.nodes);
	return ret;
}