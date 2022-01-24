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
struct mlx4_cq {int cqe_size; int /*<<< orphan*/  cons_index; } ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int CQ_OK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_cqe*,int) ; 
 struct mlx4_cqe* FUNC1 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(struct mlx4_cq *cq,
				    struct mlx4_cqe **pcqe)
{
	struct mlx4_cqe *cqe;

	cqe = FUNC1(cq);
	if (!cqe)
		return CQ_EMPTY;

	if (cq->cqe_size == 64)
		++cqe;

	++cq->cons_index;

	FUNC0(cqe, sizeof *cqe);

	/*
	 * Make sure we read CQ entry contents after we've checked the
	 * ownership bit.
	 */
	FUNC2();

	*pcqe = cqe;

	return CQ_OK;
}