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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int srq_num; } ;
struct mlx4_srq {TYPE_1__ verbs_srq; scalar_t__ ext_srq; } ;
struct mlx4_cqe {int owner_sr_opcode; int /*<<< orphan*/  wqe_index; int /*<<< orphan*/  vlan_my_qpn; int /*<<< orphan*/  g_mlpath_rqpn; } ;
struct TYPE_4__ {int cqe; } ;
struct mlx4_cq {int cqe_size; int cons_index; TYPE_2__ ibv_cq; } ;

/* Variables and functions */
 int MLX4_CQE_IS_SEND_MASK ; 
 int MLX4_CQE_OWNER_MASK ; 
 int MLX4_CQE_QPN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_cqe* FUNC2 (struct mlx4_cq*,int) ; 
 scalar_t__ FUNC3 (struct mlx4_cq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_cqe*,struct mlx4_cqe*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_srq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct mlx4_cq *cq, uint32_t qpn, struct mlx4_srq *srq)
{
	struct mlx4_cqe *cqe, *dest;
	uint32_t prod_index;
	uint8_t owner_bit;
	int nfreed = 0;
	int cqe_inc = cq->cqe_size == 64 ? 1 : 0;

	/*
	 * First we need to find the current producer index, so we
	 * know where to start cleaning from.  It doesn't matter if HW
	 * adds new entries after this loop -- the QP we're worried
	 * about is already in RESET, so the new entries won't come
	 * from our QP and therefore don't need to be checked.
	 */
	for (prod_index = cq->cons_index; FUNC3(cq, prod_index); ++prod_index)
		if (prod_index == cq->cons_index + cq->ibv_cq.cqe)
			break;

	/*
	 * Now sweep backwards through the CQ, removing CQ entries
	 * that match our QP by copying older entries on top of them.
	 */
	while ((int) --prod_index - (int) cq->cons_index >= 0) {
		cqe = FUNC2(cq, prod_index & cq->ibv_cq.cqe);
		cqe += cqe_inc;
		if (srq && srq->ext_srq &&
		    (FUNC1(cqe->g_mlpath_rqpn) & MLX4_CQE_QPN_MASK) == srq->verbs_srq.srq_num &&
		    !(cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK)) {
			FUNC5(srq, FUNC0(cqe->wqe_index));
			++nfreed;
		} else if ((FUNC1(cqe->vlan_my_qpn) & MLX4_CQE_QPN_MASK) == qpn) {
			if (srq && !(cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK))
				FUNC5(srq, FUNC0(cqe->wqe_index));
			++nfreed;
		} else if (nfreed) {
			dest = FUNC2(cq, (prod_index + nfreed) & cq->ibv_cq.cqe);
			dest += cqe_inc;
			owner_bit = dest->owner_sr_opcode & MLX4_CQE_OWNER_MASK;
			FUNC4(dest, cqe, sizeof *cqe);
			dest->owner_sr_opcode = owner_bit |
				(dest->owner_sr_opcode & ~MLX4_CQE_OWNER_MASK);
		}
	}

	if (nfreed) {
		cq->cons_index += nfreed;
		/*
		 * Make sure update of buffer contents is done before
		 * updating consumer index.
		 */
		FUNC7();
		FUNC6(cq);
	}
}