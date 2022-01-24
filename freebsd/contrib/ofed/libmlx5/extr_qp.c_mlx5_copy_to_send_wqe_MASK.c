#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_wqe_raddr_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_wqe_ctrl_seg {int /*<<< orphan*/  qpn_ds; int /*<<< orphan*/  opmod_idx_opcode; } ;
struct mlx5_wqe_atomic_seg {int dummy; } ;
struct TYPE_4__ {int wqe_cnt; void* qend; } ;
struct mlx5_qp {TYPE_2__ sq; TYPE_1__* ibv_qp; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;

/* Variables and functions */
 scalar_t__ IBV_QPT_RC ; 
 int IBV_WC_GENERAL_ERR ; 
 int IBV_WC_REM_INV_REQ_ERR ; 
 scalar_t__ IBV_WC_SUCCESS ; 
#define  MLX5_OPCODE_ATOMIC_CS 130 
#define  MLX5_OPCODE_ATOMIC_FA 129 
#define  MLX5_OPCODE_RDMA_READ 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_wqe_data_seg*,void*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC3 (struct mlx5_qp*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct mlx5_qp *qp, int idx, void *buf, int size)
{
	struct mlx5_wqe_ctrl_seg *ctrl;
	struct mlx5_wqe_data_seg *scat;
	void *p;
	int max;

	idx &= (qp->sq.wqe_cnt - 1);
	ctrl = FUNC3(qp, idx);
	if (qp->ibv_qp->qp_type != IBV_QPT_RC) {
		FUNC2(stderr, "scatter to CQE is supported only for RC QPs\n");
		return IBV_WC_GENERAL_ERR;
	}
	p = ctrl + 1;

	switch (FUNC0(ctrl->opmod_idx_opcode) & 0xff) {
	case MLX5_OPCODE_RDMA_READ:
		p = p + sizeof(struct mlx5_wqe_raddr_seg);
		break;

	case MLX5_OPCODE_ATOMIC_CS:
	case MLX5_OPCODE_ATOMIC_FA:
		p = p + sizeof(struct mlx5_wqe_raddr_seg) +
			sizeof(struct mlx5_wqe_atomic_seg);
		break;

	default:
		FUNC2(stderr, "scatter to CQE for opcode %d\n",
			FUNC0(ctrl->opmod_idx_opcode) & 0xff);
		return IBV_WC_REM_INV_REQ_ERR;
	}

	scat = p;
	max = (FUNC0(ctrl->qpn_ds) & 0x3F) - (((void *)scat - (void *)ctrl) >> 4);
	if (FUNC4((void *)(scat + max) > qp->sq.qend)) {
		int tmp = ((void *)qp->sq.qend - (void *)scat) >> 4;
		int orig_size = size;

		if (FUNC1(scat, buf, &size, tmp) == IBV_WC_SUCCESS)
			return IBV_WC_SUCCESS;
		max = max - tmp;
		buf += orig_size - size;
		scat = FUNC3(qp, 0);
	}

	return FUNC1(scat, buf, &size, max);
}