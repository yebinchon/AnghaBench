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
struct mlx5_cq {TYPE_1__* cqe64; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  imm_inval_pkey; } ;

/* Variables and functions */
#define  MLX5_CQE_RESP_SEND_INV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_cq_ex*) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct mlx5_cq* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t FUNC4(struct ibv_cq_ex *ibcq)
{
	struct mlx5_cq *cq = FUNC3(FUNC1(ibcq));

	switch (FUNC2(cq->cqe64)) {
	case MLX5_CQE_RESP_SEND_INV:
		return FUNC0(cq->cqe64->imm_inval_pkey);
	default:
		return cq->cqe64->imm_inval_pkey;
	}
}