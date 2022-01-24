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
struct mlx5_cq {int arm_sn; int cons_index; int cqn; void** dbrec; } ;
struct mlx5_context {int /*<<< orphan*/  lock32; scalar_t__* uar; } ;
struct ibv_cq {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 size_t MLX5_CQ_ARM_DB ; 
 int MLX5_CQ_DB_REQ_NOT ; 
 int MLX5_CQ_DB_REQ_NOT_SOL ; 
 scalar_t__ MLX5_CQ_DOORBELL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mlx5_cq* FUNC4 (struct ibv_cq*) ; 
 struct mlx5_context* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ibv_cq *ibvcq, int solicited)
{
	struct mlx5_cq *cq = FUNC4(ibvcq);
	struct mlx5_context *ctx = FUNC5(ibvcq->context);
	uint32_t doorbell[2];
	uint32_t sn;
	uint32_t ci;
	uint32_t cmd;

	sn  = cq->arm_sn & 3;
	ci  = cq->cons_index & 0xffffff;
	cmd = solicited ? MLX5_CQ_DB_REQ_NOT_SOL : MLX5_CQ_DB_REQ_NOT;

	cq->dbrec[MLX5_CQ_ARM_DB] = FUNC0(sn << 28 | cmd | ci);

	/*
	 * Make sure that the doorbell record in host memory is
	 * written before ringing the doorbell via PCI WC MMIO.
	 */
	FUNC3();

	doorbell[0] = FUNC0(sn << 28 | cmd | ci);
	doorbell[1] = FUNC0(cq->cqn);

	FUNC1(doorbell, ctx->uar[0] + MLX5_CQ_DOORBELL, &ctx->lock32);

	FUNC2();

	return 0;
}