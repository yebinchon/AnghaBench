
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_context {TYPE_1__* srq_table; } ;
struct TYPE_2__ {int ** table; int refcnt; } ;


 size_t MLX5_QP_TABLE_SHIFT ;
 size_t MLX5_SRQ_TABLE_MASK ;
 int free (int **) ;

void mlx5_clear_srq(struct mlx5_context *ctx, uint32_t srqn)
{
 int tind = srqn >> MLX5_QP_TABLE_SHIFT;

 if (!--ctx->srq_table[tind].refcnt)
  free(ctx->srq_table[tind].table);
 else
  ctx->srq_table[tind].table[srqn & MLX5_SRQ_TABLE_MASK] = ((void*)0);
}
