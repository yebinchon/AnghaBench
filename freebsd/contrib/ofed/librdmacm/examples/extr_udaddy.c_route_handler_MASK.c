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
struct rdma_conn_param {int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; } ;
struct cmatest_node {int /*<<< orphan*/  cma_id; } ;
struct TYPE_4__ {TYPE_1__* rai; } ;
struct TYPE_3__ {int /*<<< orphan*/  ai_connect_len; int /*<<< orphan*/  ai_connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct cmatest_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct cmatest_node*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rdma_conn_param*) ; 
 TYPE_2__ test ; 
 int FUNC6 (struct cmatest_node*) ; 

__attribute__((used)) static int FUNC7(struct cmatest_node *node)
{
	struct rdma_conn_param conn_param;
	int ret;

	ret = FUNC6(node);
	if (ret)
		goto err;

	ret = FUNC1(node);
	if (ret)
		goto err;

	ret = FUNC4(node);
	if (ret)
		goto err;

	FUNC2(&conn_param, 0, sizeof conn_param);
	conn_param.private_data = test.rai->ai_connect;
	conn_param.private_data_len = test.rai->ai_connect_len;
	ret = FUNC5(node->cma_id, &conn_param);
	if (ret) {
		FUNC3("udaddy: failure connecting");
		goto err;
	}
	return 0;
err:
	FUNC0();
	return ret;
}