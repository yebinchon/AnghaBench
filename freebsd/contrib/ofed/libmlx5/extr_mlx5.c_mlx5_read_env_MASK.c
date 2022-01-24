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
struct mlx5_context {int stall_enable; int stall_adaptive_enable; void* stall_cycles; } ;
struct ibv_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (struct ibv_device*) ; 
 void* mlx5_stall_cq_dec_step ; 
 void* mlx5_stall_cq_inc_step ; 
 void* mlx5_stall_cq_poll_max ; 
 void* mlx5_stall_cq_poll_min ; 
 scalar_t__ mlx5_stall_num_loop ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(struct ibv_device *ibdev, struct mlx5_context *ctx)
{
	char *env_value;

	env_value = FUNC1("MLX5_STALL_CQ_POLL");
	if (env_value)
		/* check if cq stall is enforced by user */
		ctx->stall_enable = (FUNC3(env_value, "0")) ? 1 : 0;
	else
		/* autodetect if we need to do cq polling */
		ctx->stall_enable = FUNC2(ibdev);

	env_value = FUNC1("MLX5_STALL_NUM_LOOP");
	if (env_value)
		mlx5_stall_num_loop = FUNC0(env_value);

	env_value = FUNC1("MLX5_STALL_CQ_POLL_MIN");
	if (env_value)
		mlx5_stall_cq_poll_min = FUNC0(env_value);

	env_value = FUNC1("MLX5_STALL_CQ_POLL_MAX");
	if (env_value)
		mlx5_stall_cq_poll_max = FUNC0(env_value);

	env_value = FUNC1("MLX5_STALL_CQ_INC_STEP");
	if (env_value)
		mlx5_stall_cq_inc_step = FUNC0(env_value);

	env_value = FUNC1("MLX5_STALL_CQ_DEC_STEP");
	if (env_value)
		mlx5_stall_cq_dec_step = FUNC0(env_value);

	ctx->stall_adaptive_enable = 0;
	ctx->stall_cycles = 0;

	if (mlx5_stall_num_loop < 0) {
		ctx->stall_adaptive_enable = 1;
		ctx->stall_cycles = mlx5_stall_cq_poll_min;
	}

}