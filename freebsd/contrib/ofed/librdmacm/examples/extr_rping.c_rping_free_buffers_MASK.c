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
struct rping_cb {int /*<<< orphan*/  start_buf; int /*<<< orphan*/  start_mr; int /*<<< orphan*/  server; int /*<<< orphan*/  rdma_buf; int /*<<< orphan*/  rdma_mr; int /*<<< orphan*/  send_mr; int /*<<< orphan*/  recv_mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rping_cb *cb)
{
	FUNC0("rping_free_buffers called on cb %p\n", cb);
	FUNC2(cb->recv_mr);
	FUNC2(cb->send_mr);
	FUNC2(cb->rdma_mr);
	FUNC1(cb->rdma_buf);
	if (!cb->server) {
		FUNC2(cb->start_mr);
		FUNC1(cb->start_buf);
	}
}