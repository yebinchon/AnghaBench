#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmatest_node {int /*<<< orphan*/  cma_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct cmatest_node*) ; 
 int /*<<< orphan*/  is_sender ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct cmatest_node*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmatest_node*) ; 
 TYPE_1__ test ; 
 int FUNC5 (struct cmatest_node*) ; 

__attribute__((used)) static int FUNC6(struct cmatest_node *node)
{
	int ret;

	ret = FUNC5(node);
	if (ret)
		goto err;

	ret = FUNC1(node);
	if (ret)
		goto err;

	if (!is_sender) {
		ret = FUNC3(node);
		if (ret)
			goto err;
	}

	ret = FUNC4(node->cma_id, test.dst_addr, node);
	if (ret) {
		FUNC2("mckey: failure joining");
		goto err;
	}
	return 0;
err:
	FUNC0();
	return ret;
}