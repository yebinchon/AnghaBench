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
typedef  int uint8_t ;
struct mlx5_cqe64 {int op_own; } ;
struct mlx5_cq {int cqe_sz; int resize_cqe_sz; int cons_index; int active_cqes; int resize_cqes; int /*<<< orphan*/  active_buf; int /*<<< orphan*/  resize_buf; } ;

/* Variables and functions */
 int MLX5_CQE_OWNER_MASK ; 
 int MLX5_CQE_RESIZE_CQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int,int) ; 

void FUNC5(struct mlx5_cq *cq)
{
	struct mlx5_cqe64 *scqe64;
	struct mlx5_cqe64 *dcqe64;
	void *start_cqe;
	void *scqe;
	void *dcqe;
	int ssize;
	int dsize;
	int i;
	uint8_t sw_own;

	ssize = cq->cqe_sz;
	dsize = cq->resize_cqe_sz;

	i = cq->cons_index;
	scqe = FUNC1(cq->active_buf, i & cq->active_cqes, ssize);
	scqe64 = ssize == 64 ? scqe : scqe + 64;
	start_cqe = scqe;
	if (FUNC2(scqe64->op_own, i, cq->active_cqes)) {
		FUNC0(stderr, "expected cqe in sw ownership\n");
		return;
	}

	while ((scqe64->op_own >> 4) != MLX5_CQE_RESIZE_CQ) {
		dcqe = FUNC1(cq->resize_buf, (i + 1) & (cq->resize_cqes - 1), dsize);
		dcqe64 = dsize == 64 ? dcqe : dcqe + 64;
		sw_own = FUNC4(i + 1, cq->resize_cqes);
		FUNC3(dcqe, scqe, ssize);
		dcqe64->op_own = (dcqe64->op_own & ~MLX5_CQE_OWNER_MASK) | sw_own;

		++i;
		scqe = FUNC1(cq->active_buf, i & cq->active_cqes, ssize);
		scqe64 = ssize == 64 ? scqe : scqe + 64;
		if (FUNC2(scqe64->op_own, i, cq->active_cqes)) {
			FUNC0(stderr, "expected cqe in sw ownership\n");
			return;
		}

		if (scqe == start_cqe) {
			FUNC0(stderr, "resize CQ failed to get resize CQE\n");
			return;
		}
	}
	++cq->cons_index;
}