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
struct mlx4_cqe {int owner_sr_opcode; } ;
struct TYPE_2__ {int cqe; } ;
struct mlx4_cq {int cqe_size; int cons_index; TYPE_1__ ibv_cq; } ;

/* Variables and functions */
 int MLX4_CQE_OPCODE_MASK ; 
 int MLX4_CQE_OPCODE_RESIZE ; 
 int MLX4_CQE_OWNER_MASK ; 
 struct mlx4_cqe* FUNC0 (struct mlx4_cq*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct mlx4_cqe*,int) ; 

void FUNC2(struct mlx4_cq *cq, void *buf, int old_cqe)
{
	struct mlx4_cqe *cqe;
	int i;
	int cqe_inc = cq->cqe_size == 64 ? 1 : 0;

	i = cq->cons_index;
	cqe = FUNC0(cq, (i & old_cqe));
	cqe += cqe_inc;

	while ((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) != MLX4_CQE_OPCODE_RESIZE) {
		cqe->owner_sr_opcode = (cqe->owner_sr_opcode & ~MLX4_CQE_OWNER_MASK) |
			(((i + 1) & (cq->ibv_cq.cqe + 1)) ? MLX4_CQE_OWNER_MASK : 0);
		FUNC1(buf + ((i + 1) & cq->ibv_cq.cqe) * cq->cqe_size,
		       cqe - cqe_inc, cq->cqe_size);
		++i;
		cqe = FUNC0(cq, (i & old_cqe));
		cqe += cqe_inc;
	}

	++cq->cons_index;
}