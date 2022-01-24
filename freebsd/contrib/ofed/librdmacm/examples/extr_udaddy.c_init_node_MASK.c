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
struct TYPE_3__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct ibv_qp_init_attr {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  qp_type; scalar_t__ sq_sig_all; struct cmatest_node* qp_context; TYPE_1__ cap; } ;
struct cmatest_node {int /*<<< orphan*/  pd; TYPE_2__* cma_id; int /*<<< orphan*/  cq; } ;
struct TYPE_4__ {int /*<<< orphan*/  verbs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IBV_QPT_UD ; 
 int FUNC0 (struct cmatest_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct cmatest_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int message_count ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct ibv_qp_init_attr*) ; 

__attribute__((used)) static int FUNC7(struct cmatest_node *node)
{
	struct ibv_qp_init_attr init_qp_attr;
	int cqe, ret;

	node->pd = FUNC1(node->cma_id->verbs);
	if (!node->pd) {
		ret = -ENOMEM;
		FUNC5("udaddy: unable to allocate PD\n");
		goto out;
	}

	cqe = message_count ? message_count * 2 : 2;
	node->cq = FUNC2(node->cma_id->verbs, cqe, node, NULL, 0);
	if (!node->cq) {
		ret = -ENOMEM;
		FUNC5("udaddy: unable to create CQ\n");
		goto out;
	}

	FUNC3(&init_qp_attr, 0, sizeof init_qp_attr);
	init_qp_attr.cap.max_send_wr = message_count ? message_count : 1;
	init_qp_attr.cap.max_recv_wr = message_count ? message_count : 1;
	init_qp_attr.cap.max_send_sge = 1;
	init_qp_attr.cap.max_recv_sge = 1;
	init_qp_attr.qp_context = node;
	init_qp_attr.sq_sig_all = 0;
	init_qp_attr.qp_type = IBV_QPT_UD;
	init_qp_attr.send_cq = node->cq;
	init_qp_attr.recv_cq = node->cq;
	ret = FUNC6(node->cma_id, node->pd, &init_qp_attr);
	if (ret) {
		FUNC4("udaddy: unable to create QP");
		goto out;
	}

	ret = FUNC0(node);
	if (ret) {
		FUNC5("udaddy: failed to create messages: %d\n", ret);
		goto out;
	}
out:
	return ret;
}