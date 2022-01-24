#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmatest_node {TYPE_1__* cma_id; scalar_t__ pd; scalar_t__ mem; int /*<<< orphan*/  mr; scalar_t__ cq; scalar_t__ ah; } ;
struct TYPE_3__ {scalar_t__ qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct cmatest_node *node)
{
	if (!node->cma_id)
		return;

	if (node->ah)
		FUNC3(node->ah);

	if (node->cma_id->qp)
		FUNC6(node->cma_id);

	if (node->cq)
		FUNC4(node->cq);

	if (node->mem) {
		FUNC2(node->mr);
		FUNC0(node->mem);
	}

	if (node->pd)
		FUNC1(node->pd);

	/* Destroy the RDMA ID after all device resources */
	FUNC5(node->cma_id);
}