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
struct ibv_sge {uintptr_t addr; int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; } ;
struct ibv_recv_wr {int num_sge; uintptr_t wr_id; struct ibv_sge* sg_list; int /*<<< orphan*/ * next; } ;
struct cmatest_node {TYPE_2__* cma_id; scalar_t__ mem; TYPE_1__* mr; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct ibv_recv_wr*,struct ibv_recv_wr**) ; 
 int message_count ; 
 int /*<<< orphan*/  message_size ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct cmatest_node *node)
{
	struct ibv_recv_wr recv_wr, *recv_failure;
	struct ibv_sge sge;
	int i, ret = 0;

	if (!message_count)
		return 0;

	recv_wr.next = NULL;
	recv_wr.sg_list = &sge;
	recv_wr.num_sge = 1;
	recv_wr.wr_id = (uintptr_t) node;

	sge.length = message_size;
	sge.lkey = node->mr->lkey;
	sge.addr = (uintptr_t) node->mem;

	for (i = 0; i < message_count && !ret; i++ ) {
		ret = FUNC0(node->cma_id->qp, &recv_wr, &recv_failure);
		if (ret) {
			FUNC1("failed to post receives: %d\n", ret);
			break;
		}
	}
	return ret;
}