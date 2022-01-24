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
struct rping_cb {int count; int state; unsigned char* start_buf; int size; char* rdma_buf; scalar_t__ verbose; scalar_t__ validate; int /*<<< orphan*/  sem; int /*<<< orphan*/  sq_wr; int /*<<< orphan*/  qp; int /*<<< orphan*/  rdma_mr; int /*<<< orphan*/  start_mr; } ;
struct ibv_send_wr {int dummy; } ;

/* Variables and functions */
 int DISCONNECTED ; 
 int RDMA_READ_ADV ; 
 int RDMA_WRITE_ADV ; 
 int RDMA_WRITE_COMPLETE ; 
 char* RPING_MSG_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibv_send_wr**) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rping_cb*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct rping_cb *cb)
{
	int ping, start, cc, i, ret = 0;
	struct ibv_send_wr *bad_wr;
	unsigned char c;

	start = 65;
	for (ping = 0; !cb->count || ping < cb->count; ping++) {
		cb->state = RDMA_READ_ADV;

		/* Put some ascii text in the buffer. */
		cc = FUNC6(cb->start_buf, cb->size, RPING_MSG_FMT, ping);
		for (i = cc, c = start; i < cb->size; i++) {
			cb->start_buf[i] = c;
			c++;
			if (c > 122)
				c = 65;
		}
		start++;
		if (start > 122)
			start = 65;
		cb->start_buf[cb->size - 1] = 0;

		FUNC4(cb, cb->start_buf, cb->start_mr);
		ret = FUNC1(cb->qp, &cb->sq_wr, &bad_wr);
		if (ret) {
			FUNC0(stderr, "post send error %d\n", ret);
			break;
		}

		/* Wait for server to ACK */
		FUNC5(&cb->sem);
		if (cb->state != RDMA_WRITE_ADV) {
			FUNC0(stderr, "wait for RDMA_WRITE_ADV state %d\n",
				cb->state);
			ret = -1;
			break;
		}

		FUNC4(cb, cb->rdma_buf, cb->rdma_mr);
		ret = FUNC1(cb->qp, &cb->sq_wr, &bad_wr);
		if (ret) {
			FUNC0(stderr, "post send error %d\n", ret);
			break;
		}

		/* Wait for the server to say the RDMA Write is complete. */
		FUNC5(&cb->sem);
		if (cb->state != RDMA_WRITE_COMPLETE) {
			FUNC0(stderr, "wait for RDMA_WRITE_COMPLETE state %d\n",
				cb->state);
			ret = -1;
			break;
		}

		if (cb->validate)
			if (FUNC2(cb->start_buf, cb->rdma_buf, cb->size)) {
				FUNC0(stderr, "data mismatch!\n");
				ret = -1;
				break;
			}

		if (cb->verbose)
			FUNC3("ping data: %s\n", cb->rdma_buf);
	}

	return (cb->state == DISCONNECTED) ? 0 : ret;
}