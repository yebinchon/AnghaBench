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
struct rping_cb {scalar_t__ state; int /*<<< orphan*/  sem; int /*<<< orphan*/  child_cm_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct rping_cb *cb)
{
	int ret;

	FUNC0("accepting client connection request\n");

	ret = FUNC3(cb->child_cm_id, NULL);
	if (ret) {
		FUNC2("rdma_accept");
		return ret;
	}

	FUNC4(&cb->sem);
	if (cb->state == ERROR) {
		FUNC1(stderr, "wait for CONNECTED state %ld\n", cb->state);
		return -1;
	}
	return 0;
}