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
struct mlx4_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx4_wqe_data_seg {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct mlx4_srq {int max_gs; size_t head; size_t tail; int counter; int /*<<< orphan*/  lock; void** db; int /*<<< orphan*/ * wrid; } ;
struct ibv_srq {int dummy; } ;
struct ibv_recv_wr {int num_sge; TYPE_1__* sg_list; int /*<<< orphan*/  wr_id; struct ibv_recv_wr* next; } ;
struct TYPE_2__ {int length; int lkey; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int MLX4_INVALID_LKEY ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx4_wqe_srq_next_seg* FUNC1 (struct mlx4_srq*,size_t) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_srq* FUNC6 (struct ibv_srq*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct ibv_srq *ibsrq,
		       struct ibv_recv_wr *wr,
		       struct ibv_recv_wr **bad_wr)
{
	struct mlx4_srq *srq = FUNC6(ibsrq);
	struct mlx4_wqe_srq_next_seg *next;
	struct mlx4_wqe_data_seg *scat;
	int err = 0;
	int nreq;
	int i;

	FUNC4(&srq->lock);

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		if (wr->num_sge > srq->max_gs) {
			err = -1;
			*bad_wr = wr;
			break;
		}

		if (srq->head == srq->tail) {
			/* SRQ is full*/
			err = -1;
			*bad_wr = wr;
			break;
		}

		srq->wrid[srq->head] = wr->wr_id;

		next      = FUNC1(srq, srq->head);
		srq->head = FUNC0(next->next_wqe_index);
		scat      = (struct mlx4_wqe_data_seg *) (next + 1);

		for (i = 0; i < wr->num_sge; ++i) {
			scat[i].byte_count = FUNC2(wr->sg_list[i].length);
			scat[i].lkey       = FUNC2(wr->sg_list[i].lkey);
			scat[i].addr       = FUNC3(wr->sg_list[i].addr);
		}

		if (i < srq->max_gs) {
			scat[i].byte_count = 0;
			scat[i].lkey       = FUNC2(MLX4_INVALID_LKEY);
			scat[i].addr       = 0;
		}
	}

	if (nreq) {
		srq->counter += nreq;

		/*
		 * Make sure that descriptors are written before
		 * we write doorbell record.
		 */
		FUNC7();

		*srq->db = FUNC2(srq->counter);
	}

	FUNC5(&srq->lock);

	return err;
}