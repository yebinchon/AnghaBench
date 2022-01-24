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
struct mlx5_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5_srq {int tail; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct mlx5_wqe_srq_next_seg* FUNC0 (struct mlx5_srq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_srq *srq, int ind)
{
	struct mlx5_wqe_srq_next_seg *next;

	FUNC2(&srq->lock);

	next = FUNC0(srq, srq->tail);
	next->next_wqe_index = FUNC1(ind);
	srq->tail = ind;

	FUNC3(&srq->lock);
}