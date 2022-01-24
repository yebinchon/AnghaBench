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
typedef  int /*<<< orphan*/  uint64_t ;
struct mlx4_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx4_wqe_data_seg {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct mlx4_srq {int max; int max_gs; int wqe_shift; int tail; scalar_t__ head; TYPE_3__ buf; int /*<<< orphan*/  wrid; } ;
struct ibv_srq_attr {int dummy; } ;
struct ibv_pd {TYPE_1__* context; } ;
struct TYPE_5__ {int /*<<< orphan*/  page_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_INVALID_LKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx4_wqe_srq_next_seg* FUNC1 (struct mlx4_srq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ibv_pd *pd, struct ibv_srq_attr *attr,
		       struct mlx4_srq *srq)
{
	struct mlx4_wqe_srq_next_seg *next;
	struct mlx4_wqe_data_seg *scatter;
	int size;
	int buf_size;
	int i;

	srq->wrid = FUNC4(srq->max * sizeof (uint64_t));
	if (!srq->wrid)
		return -1;

	size = sizeof (struct mlx4_wqe_srq_next_seg) +
		srq->max_gs * sizeof (struct mlx4_wqe_data_seg);

	for (srq->wqe_shift = 5; 1 << srq->wqe_shift < size; ++srq->wqe_shift)
		; /* nothing */

	buf_size = srq->max << srq->wqe_shift;

	if (FUNC6(&srq->buf, buf_size,
			   FUNC7(pd->context->device)->page_size)) {
		FUNC0(srq->wrid);
		return -1;
	}

	FUNC5(srq->buf.buf, 0, buf_size);

	/*
	 * Now initialize the SRQ buffer so that all of the WQEs are
	 * linked into the list of free WQEs.
	 */

	for (i = 0; i < srq->max; ++i) {
		next = FUNC1(srq, i);
		next->next_wqe_index = FUNC2((i + 1) & (srq->max - 1));

		for (scatter = (void *) (next + 1);
		     (void *) scatter < (void *) next + (1 << srq->wqe_shift);
		     ++scatter)
			scatter->lkey = FUNC3(MLX4_INVALID_LKEY);
	}

	srq->head = 0;
	srq->tail = srq->max - 1;

	return 0;
}