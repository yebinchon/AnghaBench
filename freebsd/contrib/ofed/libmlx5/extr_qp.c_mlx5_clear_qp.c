
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_context {TYPE_1__* qp_table; } ;
struct TYPE_2__ {int ** table; int refcnt; } ;


 size_t MLX5_QP_TABLE_MASK ;
 size_t MLX5_QP_TABLE_SHIFT ;
 int free (int **) ;

void mlx5_clear_qp(struct mlx5_context *ctx, uint32_t qpn)
{
 int tind = qpn >> MLX5_QP_TABLE_SHIFT;

 if (!--ctx->qp_table[tind].refcnt)
  free(ctx->qp_table[tind].table);
 else
  ctx->qp_table[tind].table[qpn & MLX5_QP_TABLE_MASK] = ((void*)0);
}
