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
struct mlx4_wqe_ctrl_seg {int fence_size; int /*<<< orphan*/  owner_opcode; } ;
struct TYPE_2__ {int wqe_cnt; int wqe_shift; } ;
struct mlx4_qp {TYPE_1__ sq; } ;

/* Variables and functions */
 struct mlx4_wqe_ctrl_seg* FUNC0 (struct mlx4_qp*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_qp*,int) ; 

void FUNC3(struct mlx4_qp *qp)
{
	struct mlx4_wqe_ctrl_seg *ctrl;
	int i;

	for (i = 0; i < qp->sq.wqe_cnt; ++i) {
		ctrl = FUNC0(qp, i);
		ctrl->owner_opcode = FUNC1(1 << 31);
		ctrl->fence_size = 1 << (qp->sq.wqe_shift - 4);

		FUNC2(qp, i);
	}
}