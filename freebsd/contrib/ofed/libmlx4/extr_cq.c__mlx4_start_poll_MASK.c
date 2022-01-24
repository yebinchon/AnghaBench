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
struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/ * cur_qp; } ;
struct ibv_poll_cq_attr {int /*<<< orphan*/  comp_mask; } ;
struct ibv_cq_ex {int dummy; } ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_cq_ex*) ; 
 int FUNC1 (struct mlx4_cq*,struct mlx4_cqe**) ; 
 int FUNC2 (struct mlx4_cq*,struct mlx4_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_cq* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct ibv_cq_ex *ibcq,
				   struct ibv_poll_cq_attr *attr,
				   int lock)
{
	struct mlx4_cq *cq = FUNC5(FUNC0(ibcq));
	struct mlx4_cqe *cqe;
	int err;

	if (FUNC6(attr->comp_mask))
		return EINVAL;

	if (lock)
		FUNC3(&cq->lock);

	cq->cur_qp = NULL;

	err = FUNC1(cq, &cqe);
	if (err == CQ_EMPTY) {
		if (lock)
			FUNC4(&cq->lock);
		return ENOENT;
	}

	err = FUNC2(cq, cqe);
	if (lock && err)
		FUNC4(&cq->lock);

	return err;
}