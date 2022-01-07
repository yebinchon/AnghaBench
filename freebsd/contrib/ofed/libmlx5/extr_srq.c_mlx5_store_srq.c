
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_qp {int dummy; } ;
struct mlx5_context {TYPE_1__* srq_table; } ;
struct TYPE_2__ {struct mlx5_srq** table; int refcnt; } ;


 int MLX5_QP_TABLE_MASK ;
 int MLX5_SRQ_TABLE_SHIFT ;
 struct mlx5_srq** calloc (int,int) ;

int mlx5_store_srq(struct mlx5_context *ctx, uint32_t srqn,
     struct mlx5_srq *srq)
{
 int tind = srqn >> MLX5_SRQ_TABLE_SHIFT;

 if (!ctx->srq_table[tind].refcnt) {
  ctx->srq_table[tind].table = calloc(MLX5_QP_TABLE_MASK + 1,
         sizeof(struct mlx5_qp *));
  if (!ctx->srq_table[tind].table)
   return -1;
 }

 ++ctx->srq_table[tind].refcnt;
 ctx->srq_table[tind].table[srqn & MLX5_QP_TABLE_MASK] = srq;
 return 0;
}
