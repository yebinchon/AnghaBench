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
struct rping_cb {scalar_t__ state; int /*<<< orphan*/  sem; int /*<<< orphan*/  cm_id; } ;
struct rdma_conn_param {int responder_resources; int initiator_depth; int retry_count; } ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(struct rping_cb *cb)
{
	struct rdma_conn_param conn_param;
	int ret;

	FUNC2(&conn_param, 0, sizeof conn_param);
	conn_param.responder_resources = 1;
	conn_param.initiator_depth = 1;
	conn_param.retry_count = 7;

	ret = FUNC4(cb->cm_id, &conn_param);
	if (ret) {
		FUNC3("rdma_connect");
		return ret;
	}

	FUNC5(&cb->sem);
	if (cb->state != CONNECTED) {
		FUNC1(stderr, "wait for CONNECTED state %ld\n", cb->state);
		return -1;
	}

	FUNC0("rmda_connect successful\n");
	return 0;
}