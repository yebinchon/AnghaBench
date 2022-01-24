#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rdma_conn_param {int /*<<< orphan*/  qp_num; } ;
struct rdma_cm_id {TYPE_1__* qp; struct cmatest_node* context; } ;
struct cmatest_node {int connected; struct rdma_cm_id* cma_id; } ;
struct TYPE_4__ {scalar_t__ conn_index; int /*<<< orphan*/  connects_left; struct cmatest_node* nodes; } ;
struct TYPE_3__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ connections ; 
 int FUNC1 (struct cmatest_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct cmatest_node*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct rdma_cm_id*,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ test ; 
 int FUNC8 (struct cmatest_node*) ; 

__attribute__((used)) static int FUNC9(struct rdma_cm_id *cma_id)
{
	struct cmatest_node *node;
	struct rdma_conn_param conn_param;
	int ret;

	if (test.conn_index == connections) {
		ret = -ENOMEM;
		goto err1;
	}
	node = &test.nodes[test.conn_index++];

	node->cma_id = cma_id;
	cma_id->context = node;

	ret = FUNC8(node);
	if (ret)
		goto err2;

	ret = FUNC1(node);
	if (ret)
		goto err2;

	ret = FUNC4(node);
	if (ret)
		goto err2;

	FUNC2(&conn_param, 0, sizeof conn_param);
	conn_param.qp_num = node->cma_id->qp->qp_num;
	ret = FUNC6(node->cma_id, &conn_param);
	if (ret) {
		FUNC3("udaddy: failure accepting");
		goto err2;
	}
	node->connected = 1;
	test.connects_left--;
	return 0;

err2:
	node->cma_id = NULL;
	FUNC0();
err1:
	FUNC5("udaddy: failing connection request\n");
	FUNC7(cma_id, NULL, 0);
	return ret;
}