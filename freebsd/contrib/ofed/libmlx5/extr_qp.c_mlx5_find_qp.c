
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_qp {int dummy; } ;
struct mlx5_context {TYPE_1__* qp_table; } ;
struct TYPE_2__ {struct mlx5_qp** table; scalar_t__ refcnt; } ;


 size_t MLX5_QP_TABLE_MASK ;
 size_t MLX5_QP_TABLE_SHIFT ;

struct mlx5_qp *mlx5_find_qp(struct mlx5_context *ctx, uint32_t qpn)
{
 int tind = qpn >> MLX5_QP_TABLE_SHIFT;

 if (ctx->qp_table[tind].refcnt)
  return ctx->qp_table[tind].table[qpn & MLX5_QP_TABLE_MASK];
 else
  return ((void*)0);
}
