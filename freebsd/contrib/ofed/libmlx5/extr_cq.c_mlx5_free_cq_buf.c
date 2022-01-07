
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {int dummy; } ;
struct mlx5_buf {int dummy; } ;


 int mlx5_free_actual_buf (struct mlx5_context*,struct mlx5_buf*) ;

int mlx5_free_cq_buf(struct mlx5_context *ctx, struct mlx5_buf *buf)
{
 return mlx5_free_actual_buf(ctx, buf);
}
