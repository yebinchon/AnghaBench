#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmatest_node {int /*<<< orphan*/  cma_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_OPTION_ID ; 
 int /*<<< orphan*/  RDMA_OPTION_ID_TOS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ set_tos ; 
 int /*<<< orphan*/  tos ; 

__attribute__((used)) static int FUNC4(struct cmatest_node *node)
{
	int ret;

	if (set_tos) {
		ret = FUNC3(node->cma_id, RDMA_OPTION_ID,
				      RDMA_OPTION_ID_TOS, &tos, sizeof tos);
		if (ret)
			FUNC1("cmatose: set TOS option failed");
	}

	ret = FUNC2(node->cma_id, 2000);
	if (ret) {
		FUNC1("cmatose: resolve route failed");
		FUNC0();
	}
	return ret;
}