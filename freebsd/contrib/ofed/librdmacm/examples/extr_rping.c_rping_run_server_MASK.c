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
struct rping_cb {scalar_t__ state; int /*<<< orphan*/  child_cm_id; int /*<<< orphan*/  cqthread; int /*<<< orphan*/  rq_wr; int /*<<< orphan*/  qp; int /*<<< orphan*/  sem; } ;
struct ibv_recv_wr {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONNECT_REQUEST ; 
 int /*<<< orphan*/  cq_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibv_recv_wr**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rping_cb*) ; 
 int FUNC8 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC9 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct rping_cb*) ; 
 int FUNC11 (struct rping_cb*) ; 
 int FUNC12 (struct rping_cb*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC15(struct rping_cb *cb)
{
	struct ibv_recv_wr *bad_wr;
	int ret;

	ret = FUNC8(cb);
	if (ret)
		return ret;

	FUNC14(&cb->sem);
	if (cb->state != CONNECT_REQUEST) {
		FUNC0(stderr, "wait for CONNECT_REQUEST state %d\n",
			cb->state);
		return -1;
	}

	ret = FUNC12(cb, cb->child_cm_id);
	if (ret) {
		FUNC0(stderr, "setup_qp failed: %d\n", ret);
		return ret;
	}

	ret = FUNC11(cb);
	if (ret) {
		FUNC0(stderr, "rping_setup_buffers failed: %d\n", ret);
		goto err1;
	}

	ret = FUNC1(cb->qp, &cb->rq_wr, &bad_wr);
	if (ret) {
		FUNC0(stderr, "ibv_post_recv failed: %d\n", ret);
		goto err2;
	}

	ret = FUNC3(&cb->cqthread, NULL, cq_thread, cb);
	if (ret) {
		FUNC2("pthread_create");
		goto err2;
	}

	ret = FUNC7(cb);
	if (ret) {
		FUNC0(stderr, "connect error %d\n", ret);
		goto err2;
	}

	ret = FUNC13(cb);
	if (ret) {
		FUNC0(stderr, "rping server failed: %d\n", ret);
		goto err3;
	}

	ret = 0;
err3:
	FUNC6(cb->child_cm_id);
	FUNC4(cb->cqthread, NULL);
	FUNC5(cb->child_cm_id);
err2:
	FUNC9(cb);
err1:
	FUNC10(cb);

	return ret;
}