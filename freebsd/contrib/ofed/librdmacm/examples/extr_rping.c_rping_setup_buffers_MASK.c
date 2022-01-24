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
struct rping_cb {int size; void* recv_mr; void* send_mr; int /*<<< orphan*/ * rdma_buf; void* rdma_mr; int /*<<< orphan*/ * start_buf; void* start_mr; int /*<<< orphan*/  pd; int /*<<< orphan*/  server; int /*<<< orphan*/  send_buf; int /*<<< orphan*/  recv_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int IBV_ACCESS_LOCAL_WRITE ; 
 int IBV_ACCESS_REMOTE_READ ; 
 int IBV_ACCESS_REMOTE_WRITE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct rping_cb*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct rping_cb *cb)
{
	int ret;

	FUNC0("rping_setup_buffers called on cb %p\n", cb);

	cb->recv_mr = FUNC4(cb->pd, &cb->recv_buf, sizeof cb->recv_buf,
				 IBV_ACCESS_LOCAL_WRITE);
	if (!cb->recv_mr) {
		FUNC1(stderr, "recv_buf reg_mr failed\n");
		return errno;
	}

	cb->send_mr = FUNC4(cb->pd, &cb->send_buf, sizeof cb->send_buf, 0);
	if (!cb->send_mr) {
		FUNC1(stderr, "send_buf reg_mr failed\n");
		ret = errno;
		goto err1;
	}

	cb->rdma_buf = FUNC5(cb->size);
	if (!cb->rdma_buf) {
		FUNC1(stderr, "rdma_buf malloc failed\n");
		ret = -ENOMEM;
		goto err2;
	}

	cb->rdma_mr = FUNC4(cb->pd, cb->rdma_buf, cb->size,
				 IBV_ACCESS_LOCAL_WRITE |
				 IBV_ACCESS_REMOTE_READ |
				 IBV_ACCESS_REMOTE_WRITE);
	if (!cb->rdma_mr) {
		FUNC1(stderr, "rdma_buf reg_mr failed\n");
		ret = errno;
		goto err3;
	}

	if (!cb->server) {
		cb->start_buf = FUNC5(cb->size);
		if (!cb->start_buf) {
			FUNC1(stderr, "start_buf malloc failed\n");
			ret = -ENOMEM;
			goto err4;
		}

		cb->start_mr = FUNC4(cb->pd, cb->start_buf, cb->size,
					  IBV_ACCESS_LOCAL_WRITE | 
					  IBV_ACCESS_REMOTE_READ |
					  IBV_ACCESS_REMOTE_WRITE);
		if (!cb->start_mr) {
			FUNC1(stderr, "start_buf reg_mr failed\n");
			ret = errno;
			goto err5;
		}
	}

	FUNC6(cb);
	FUNC0("allocated & registered buffers...\n");
	return 0;

err5:
	FUNC2(cb->start_buf);
err4:
	FUNC3(cb->rdma_mr);
err3:
	FUNC2(cb->rdma_buf);
err2:
	FUNC3(cb->send_mr);
err1:
	FUNC3(cb->recv_mr);
	return ret;
}