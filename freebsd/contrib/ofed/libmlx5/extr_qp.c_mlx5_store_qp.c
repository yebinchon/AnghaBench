
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx5_qp {int dummy; } ;
struct mlx5_context {TYPE_1__* qp_table; } ;
struct TYPE_2__ {struct mlx5_qp** table; int refcnt; } ;


 int MLX5_QP_TABLE_MASK ;
 int MLX5_QP_TABLE_SHIFT ;
 struct mlx5_qp** calloc (int,int) ;

int mlx5_store_qp(struct mlx5_context *ctx, uint32_t qpn, struct mlx5_qp *qp)
{
 int tind = qpn >> MLX5_QP_TABLE_SHIFT;

 if (!ctx->qp_table[tind].refcnt) {
  ctx->qp_table[tind].table = calloc(MLX5_QP_TABLE_MASK + 1,
         sizeof(struct mlx5_qp *));
  if (!ctx->qp_table[tind].table)
   return -1;
 }

 ++ctx->qp_table[tind].refcnt;
 ctx->qp_table[tind].table[qpn & MLX5_QP_TABLE_MASK] = qp;
 return 0;
}
