
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {int stall_enable; int stall_adaptive_enable; void* stall_cycles; } ;
struct ibv_device {int dummy; } ;


 void* atoi (char*) ;
 char* getenv (char*) ;
 int mlx5_enable_sandy_bridge_fix (struct ibv_device*) ;
 void* mlx5_stall_cq_dec_step ;
 void* mlx5_stall_cq_inc_step ;
 void* mlx5_stall_cq_poll_max ;
 void* mlx5_stall_cq_poll_min ;
 scalar_t__ mlx5_stall_num_loop ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void mlx5_read_env(struct ibv_device *ibdev, struct mlx5_context *ctx)
{
 char *env_value;

 env_value = getenv("MLX5_STALL_CQ_POLL");
 if (env_value)

  ctx->stall_enable = (strcmp(env_value, "0")) ? 1 : 0;
 else

  ctx->stall_enable = mlx5_enable_sandy_bridge_fix(ibdev);

 env_value = getenv("MLX5_STALL_NUM_LOOP");
 if (env_value)
  mlx5_stall_num_loop = atoi(env_value);

 env_value = getenv("MLX5_STALL_CQ_POLL_MIN");
 if (env_value)
  mlx5_stall_cq_poll_min = atoi(env_value);

 env_value = getenv("MLX5_STALL_CQ_POLL_MAX");
 if (env_value)
  mlx5_stall_cq_poll_max = atoi(env_value);

 env_value = getenv("MLX5_STALL_CQ_INC_STEP");
 if (env_value)
  mlx5_stall_cq_inc_step = atoi(env_value);

 env_value = getenv("MLX5_STALL_CQ_DEC_STEP");
 if (env_value)
  mlx5_stall_cq_dec_step = atoi(env_value);

 ctx->stall_adaptive_enable = 0;
 ctx->stall_cycles = 0;

 if (mlx5_stall_num_loop < 0) {
  ctx->stall_adaptive_enable = 1;
  ctx->stall_cycles = mlx5_stall_cq_poll_min;
 }

}
