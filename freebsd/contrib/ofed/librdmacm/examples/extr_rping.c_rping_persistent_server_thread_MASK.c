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
struct rping_cb {int /*<<< orphan*/  cqthread; int /*<<< orphan*/  child_cm_id; int /*<<< orphan*/  rq_wr; int /*<<< orphan*/  qp; } ;
struct ibv_recv_wr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cq_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rping_cb*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibv_recv_wr**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC11 (struct rping_cb*) ; 
 int FUNC12 (struct rping_cb*) ; 
 int FUNC13 (struct rping_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rping_cb*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC15(void *arg)
{
	struct rping_cb *cb = arg;
	struct ibv_recv_wr *bad_wr;
	int ret;

	ret = FUNC13(cb, cb->child_cm_id);
	if (ret) {
		FUNC0(stderr, "setup_qp failed: %d\n", ret);
		goto err0;
	}

	ret = FUNC12(cb);
	if (ret) {
		FUNC0(stderr, "rping_setup_buffers failed: %d\n", ret);
		goto err1;
	}

	ret = FUNC2(cb->qp, &cb->rq_wr, &bad_wr);
	if (ret) {
		FUNC0(stderr, "ibv_post_recv failed: %d\n", ret);
		goto err2;
	}

	ret = FUNC5(&cb->cqthread, NULL, cq_thread, cb);
	if (ret) {
		FUNC3("pthread_create");
		goto err2;
	}

	ret = FUNC9(cb);
	if (ret) {
		FUNC0(stderr, "connect error %d\n", ret);
		goto err3;
	}

	FUNC14(cb);
	FUNC8(cb->child_cm_id);
	FUNC6(cb->cqthread, NULL);
	FUNC10(cb);
	FUNC11(cb);
	FUNC7(cb->child_cm_id);
	FUNC1(cb);
	return NULL;
err3:
	FUNC4(cb->cqthread);
	FUNC6(cb->cqthread, NULL);
err2:
	FUNC10(cb);
err1:
	FUNC11(cb);
err0:
	FUNC1(cb);
	return NULL;
}