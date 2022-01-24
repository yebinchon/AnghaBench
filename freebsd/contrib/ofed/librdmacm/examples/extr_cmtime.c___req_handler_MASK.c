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
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_qp_attr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct rdma_cm_id*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rdma_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rdma_cm_id *id)
{
	int ret;

	ret = FUNC3(id, NULL, &init_qp_attr);
	if (ret) {
		FUNC0("failure creating qp");
		goto err;
	}

	ret = FUNC2(id, NULL);
	if (ret) {
		FUNC0("failure accepting");
		goto err;
	}
	return;

err:
	FUNC1("failing connection request\n");
	FUNC5(id, NULL, 0);
	FUNC4(id);
	return;
}