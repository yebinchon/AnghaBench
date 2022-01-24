#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx4_resize_cq {uintptr_t buf_addr; int /*<<< orphan*/  ibv_cmd; } ;
struct mlx4_buf {scalar_t__ buf; } ;
struct mlx4_cq {int /*<<< orphan*/  lock; struct mlx4_buf buf; int /*<<< orphan*/  cqe_size; } ;
struct ibv_resize_cq_resp {int dummy; } ;
struct ibv_cq {int cqe; TYPE_1__* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct ibv_cq*,int,int /*<<< orphan*/ *,int,struct ibv_resize_cq_resp*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mlx4_buf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_cq*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_buf*) ; 
 int FUNC5 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_cq* FUNC9 (struct ibv_cq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct ibv_cq *ibcq, int cqe)
{
	struct mlx4_cq *cq = FUNC9(ibcq);
	struct mlx4_resize_cq cmd;
	struct ibv_resize_cq_resp resp;
	struct mlx4_buf buf;
	int old_cqe, outst_cqe, ret;

	/* Sanity check CQ size before proceeding */
	if (cqe > 0x3fffff)
		return EINVAL;

	FUNC7(&cq->lock);

	cqe = FUNC0(cqe + 1);
	if (cqe == ibcq->cqe + 1) {
		ret = 0;
		goto out;
	}

	/* Can't be smaller then the number of outstanding CQEs */
	outst_cqe = FUNC5(cq);
	if (cqe < outst_cqe + 1) {
		ret = EINVAL;
		goto out;
	}

	ret = FUNC2(FUNC10(ibcq->context->device), &buf, cqe, cq->cqe_size);
	if (ret)
		goto out;

	old_cqe = ibcq->cqe;
	cmd.buf_addr = (uintptr_t) buf.buf;

	ret = FUNC1(ibcq, cqe - 1, &cmd.ibv_cmd, sizeof cmd,
				&resp, sizeof resp);
	if (ret) {
		FUNC4(&buf);
		goto out;
	}

	FUNC3(cq, buf.buf, old_cqe);

	FUNC4(&cq->buf);
	cq->buf = buf;
	FUNC6(cq);

out:
	FUNC8(&cq->lock);
	return ret;
}