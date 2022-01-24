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
struct rping_cb {int /*<<< orphan*/  cqthread; int /*<<< orphan*/  cm_id; int /*<<< orphan*/  rq_wr; int /*<<< orphan*/  qp; } ;
struct ibv_recv_wr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cq_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibv_recv_wr**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rping_cb*) ; 
 int FUNC7 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC8 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC9 (struct rping_cb*) ; 
 int FUNC10 (struct rping_cb*) ; 
 int FUNC11 (struct rping_cb*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rping_cb*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC13(struct rping_cb *cb)
{
	struct ibv_recv_wr *bad_wr;
	int ret;

	ret = FUNC6(cb);
	if (ret)
		return ret;

	ret = FUNC11(cb, cb->cm_id);
	if (ret) {
		FUNC0(stderr, "setup_qp failed: %d\n", ret);
		return ret;
	}

	ret = FUNC10(cb);
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
		goto err3;
	}

	ret = FUNC12(cb);
	if (ret) {
		FUNC0(stderr, "rping client failed: %d\n", ret);
		goto err4;
	}

	ret = 0;
err4:
	FUNC5(cb->cm_id);
err3:
	FUNC4(cb->cqthread, NULL);
err2:
	FUNC8(cb);
err1:
	FUNC9(cb);

	return ret;
}