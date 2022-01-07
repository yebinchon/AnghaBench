
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_context {TYPE_1__* srq_table; } ;
struct TYPE_2__ {struct mlx5_srq** table; scalar_t__ refcnt; } ;


 size_t MLX5_SRQ_TABLE_MASK ;
 size_t MLX5_SRQ_TABLE_SHIFT ;

struct mlx5_srq *mlx5_find_srq(struct mlx5_context *ctx, uint32_t srqn)
{
 int tind = srqn >> MLX5_SRQ_TABLE_SHIFT;

 if (ctx->srq_table[tind].refcnt)
  return ctx->srq_table[tind].table[srqn & MLX5_SRQ_TABLE_MASK];
 else
  return ((void*)0);
}
