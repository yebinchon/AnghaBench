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
typedef  int /*<<< orphan*/  uint32_t ;
struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int owner_sr_opcode; int /*<<< orphan*/  immed_rss_invalid; } ;

/* Variables and functions */
 int MLX4_CQE_OPCODE_MASK ; 
#define  MLX4_RECV_OPCODE_SEND_INVAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_cq_ex*) ; 
 struct mlx4_cq* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC3(struct ibv_cq_ex *ibcq)
{
	struct mlx4_cq *cq = FUNC2(FUNC1(ibcq));

	switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
	case MLX4_RECV_OPCODE_SEND_INVAL:
		return FUNC0(cq->cqe->immed_rss_invalid);
	default:
		return cq->cqe->immed_rss_invalid;
	}
}