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
struct mlx4_wqe_data_seg {scalar_t__ addr; void* lkey; scalar_t__ byte_count; } ;
struct TYPE_2__ {int head; int wqe_cnt; int max_gs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wrid; } ;
struct mlx4_qp {TYPE_1__ rq; void** db; } ;
struct ibv_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; scalar_t__ sg_list; struct ibv_recv_wr* next; } ;
struct ibv_qp {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX4_INVALID_LKEY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_wqe_data_seg*,scalar_t__) ; 
 struct mlx4_wqe_data_seg* FUNC1 (struct mlx4_qp*,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx4_qp* FUNC6 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC9(struct ibv_qp *ibqp, struct ibv_recv_wr *wr,
		   struct ibv_recv_wr **bad_wr)
{
	struct mlx4_qp *qp = FUNC6(ibqp);
	struct mlx4_wqe_data_seg *scat;
	int ret = 0;
	int nreq;
	int ind;
	int i;

	FUNC3(&qp->rq.lock);

	/* XXX check that state is OK to post receive */

	ind = qp->rq.head & (qp->rq.wqe_cnt - 1);

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		if (FUNC8(&qp->rq, nreq, FUNC5(ibqp->recv_cq))) {
			ret = ENOMEM;
			*bad_wr = wr;
			goto out;
		}

		if (wr->num_sge > qp->rq.max_gs) {
			ret = ENOMEM;
			*bad_wr = wr;
			goto out;
		}

		scat = FUNC1(qp, ind);

		for (i = 0; i < wr->num_sge; ++i)
			FUNC0(scat + i, wr->sg_list + i);

		if (i < qp->rq.max_gs) {
			scat[i].byte_count = 0;
			scat[i].lkey       = FUNC2(MLX4_INVALID_LKEY);
			scat[i].addr       = 0;
		}

		qp->rq.wrid[ind] = wr->wr_id;

		ind = (ind + 1) & (qp->rq.wqe_cnt - 1);
	}

out:
	if (nreq) {
		qp->rq.head += nreq;

		/*
		 * Make sure that descriptors are written before
		 * doorbell record.
		 */
		FUNC7();

		*qp->db = FUNC2(qp->rq.head & 0xffff);
	}

	FUNC4(&qp->rq.lock);

	return ret;
}