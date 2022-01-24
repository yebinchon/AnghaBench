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
typedef  int uint32_t ;
struct mlx4_cq {int arm_sn; int cons_index; int cqn; void** arm_db; } ;
struct ibv_cq {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int MLX4_CQ_DB_REQ_NOT ; 
 int MLX4_CQ_DB_REQ_NOT_SOL ; 
 int /*<<< orphan*/  MLX4_CQ_DOORBELL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_cq* FUNC2 (struct ibv_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct ibv_cq *ibvcq, int solicited)
{
	struct mlx4_cq *cq = FUNC2(ibvcq);
	uint32_t doorbell[2];
	uint32_t sn;
	uint32_t ci;
	uint32_t cmd;

	sn  = cq->arm_sn & 3;
	ci  = cq->cons_index & 0xffffff;
	cmd = solicited ? MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT;

	*cq->arm_db = FUNC0(sn << 28 | cmd | ci);

	/*
	 * Make sure that the doorbell record in host memory is
	 * written before ringing the doorbell via PCI MMIO.
	 */
	FUNC4();

	doorbell[0] = FUNC0(sn << 28 | cmd | cq->cqn);
	doorbell[1] = FUNC0(ci);

	FUNC1(doorbell, FUNC3(ibvcq->context), MLX4_CQ_DOORBELL);

	return 0;
}