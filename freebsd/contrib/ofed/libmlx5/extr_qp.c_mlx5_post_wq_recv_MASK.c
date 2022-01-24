#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_wqe_data_seg {scalar_t__ addr; void* lkey; scalar_t__ byte_count; } ;
struct mlx5_rwqe_sig {int dummy; } ;
struct TYPE_6__ {int head; int wqe_cnt; int max_gs; int wqe_shift; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wrid; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq; } ;
struct mlx5_rwq {int wq_sig; TYPE_3__ rq; void** recv_db; TYPE_1__ wq; } ;
struct ibv_wq {int dummy; } ;
struct ibv_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; TYPE_2__* sg_list; struct ibv_recv_wr* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MLX5_INVALID_LKEY ; 
 struct mlx5_wqe_data_seg* FUNC0 (struct mlx5_rwq*,int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_rwqe_sig*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_wqe_data_seg*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_rwq*,struct mlx5_rwqe_sig*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx5_rwq* FUNC10 (struct ibv_wq*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct ibv_wq *ibwq, struct ibv_recv_wr *wr,
		      struct ibv_recv_wr **bad_wr)
{
	struct mlx5_rwq *rwq = FUNC10(ibwq);
	struct mlx5_wqe_data_seg *scat;
	int err = 0;
	int nreq;
	int ind;
	int i, j;
	struct mlx5_rwqe_sig *sig;

	FUNC4(&rwq->rq.lock);

	ind = rwq->rq.head & (rwq->rq.wqe_cnt - 1);

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		if (FUNC12(FUNC6(&rwq->rq, nreq,
					      FUNC9(rwq->wq.cq)))) {
			err = ENOMEM;
			*bad_wr = wr;
			goto out;
		}

		if (FUNC12(wr->num_sge > rwq->rq.max_gs)) {
			err = EINVAL;
			*bad_wr = wr;
			goto out;
		}

		scat = FUNC0(rwq, ind);
		sig = (struct mlx5_rwqe_sig *)scat;
		if (FUNC12(rwq->wq_sig)) {
			FUNC3(sig, 0, 1 << rwq->rq.wqe_shift);
			++scat;
		}

		for (i = 0, j = 0; i < wr->num_sge; ++i) {
			if (FUNC12(!wr->sg_list[i].length))
				continue;
			FUNC7(scat + j++, wr->sg_list + i, 0);
		}

		if (j < rwq->rq.max_gs) {
			scat[j].byte_count = 0;
			scat[j].lkey       = FUNC1(MLX5_INVALID_LKEY);
			scat[j].addr       = 0;
		}

		if (FUNC12(rwq->wq_sig))
			FUNC8(rwq, sig, (wr->num_sge + 1) << 4,
				       rwq->rq.head & 0xffff);

		rwq->rq.wrid[ind] = wr->wr_id;

		ind = (ind + 1) & (rwq->rq.wqe_cnt - 1);
	}

out:
	if (FUNC2(nreq)) {
		rwq->rq.head += nreq;
		/*
		 * Make sure that descriptors are written before
		 * doorbell record.
		 */
		FUNC11();
		*(rwq->recv_db) = FUNC1(rwq->rq.head & 0xffff);
	}

	FUNC5(&rwq->rq.lock);

	return err;
}