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
struct rping_cb {int /*<<< orphan*/  sem; int /*<<< orphan*/  state; int /*<<< orphan*/  rq_wr; int /*<<< orphan*/  qp; int /*<<< orphan*/  server; int /*<<< orphan*/  cq; } ;
struct ibv_wc {scalar_t__ status; int opcode; } ;
struct ibv_recv_wr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
#define  IBV_WC_RDMA_READ 131 
#define  IBV_WC_RDMA_WRITE 130 
#define  IBV_WC_RECV 129 
#define  IBV_WC_SEND 128 
 scalar_t__ IBV_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  RDMA_READ_COMPLETE ; 
 int /*<<< orphan*/  RDMA_WRITE_COMPLETE ; 
 int FUNC1 (struct rping_cb*,struct ibv_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibv_recv_wr**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rping_cb*,struct ibv_wc*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct rping_cb *cb)
{
	struct ibv_wc wc;
	struct ibv_recv_wr *bad_wr;
	int ret;
	int flushed = 0;

	while ((ret = FUNC3(cb->cq, 1, &wc)) == 1) {
		ret = 0;

		if (wc.status) {
			if (wc.status == IBV_WC_WR_FLUSH_ERR) {
				flushed = 1;
				continue;

			}
			FUNC2(stderr,
				"cq completion failed status %d\n",
				wc.status);
			ret = -1;
			goto error;
		}

		switch (wc.opcode) {
		case IBV_WC_SEND:
			FUNC0("send completion\n");
			break;

		case IBV_WC_RDMA_WRITE:
			FUNC0("rdma write completion\n");
			cb->state = RDMA_WRITE_COMPLETE;
			FUNC5(&cb->sem);
			break;

		case IBV_WC_RDMA_READ:
			FUNC0("rdma read completion\n");
			cb->state = RDMA_READ_COMPLETE;
			FUNC5(&cb->sem);
			break;

		case IBV_WC_RECV:
			FUNC0("recv completion\n");
			ret = cb->server ? FUNC6(cb, &wc) :
					   FUNC1(cb, &wc);
			if (ret) {
				FUNC2(stderr, "recv wc error: %d\n", ret);
				goto error;
			}

			ret = FUNC4(cb->qp, &cb->rq_wr, &bad_wr);
			if (ret) {
				FUNC2(stderr, "post recv error: %d\n", ret);
				goto error;
			}
			FUNC5(&cb->sem);
			break;

		default:
			FUNC0("unknown!!!!! completion\n");
			ret = -1;
			goto error;
		}
	}
	if (ret) {
		FUNC2(stderr, "poll error %d\n", ret);
		goto error;
	}
	return flushed;

error:
	cb->state = ERROR;
	FUNC5(&cb->sem);
	return ret;
}