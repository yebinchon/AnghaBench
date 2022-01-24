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
struct rping_cb {int /*<<< orphan*/  pd; int /*<<< orphan*/  channel; int /*<<< orphan*/  cq; int /*<<< orphan*/  qp; } ;
struct rdma_cm_id {int /*<<< orphan*/  verbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int RPING_SQ_DEPTH ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct rping_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct rping_cb*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(struct rping_cb *cb, struct rdma_cm_id *cm_id)
{
	int ret;

	cb->pd = FUNC2(cm_id->verbs);
	if (!cb->pd) {
		FUNC1(stderr, "ibv_alloc_pd failed\n");
		return errno;
	}
	FUNC0("created pd %p\n", cb->pd);

	cb->channel = FUNC3(cm_id->verbs);
	if (!cb->channel) {
		FUNC1(stderr, "ibv_create_comp_channel failed\n");
		ret = errno;
		goto err1;
	}
	FUNC0("created channel %p\n", cb->channel);

	cb->cq = FUNC4(cm_id->verbs, RPING_SQ_DEPTH * 2, cb,
				cb->channel, 0);
	if (!cb->cq) {
		FUNC1(stderr, "ibv_create_cq failed\n");
		ret = errno;
		goto err2;
	}
	FUNC0("created cq %p\n", cb->cq);

	ret = FUNC8(cb->cq, 0);
	if (ret) {
		FUNC1(stderr, "ibv_create_cq failed\n");
		ret = errno;
		goto err3;
	}

	ret = FUNC10(cb);
	if (ret) {
		FUNC9("rdma_create_qp");
		goto err3;
	}
	FUNC0("created qp %p\n", cb->qp);
	return 0;

err3:
	FUNC7(cb->cq);
err2:
	FUNC6(cb->channel);
err1:
	FUNC5(cb->pd);
	return ret;
}