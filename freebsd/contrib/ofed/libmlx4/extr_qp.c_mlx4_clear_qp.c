
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_context {int num_qps; int qp_table_shift; int qp_table_mask; TYPE_1__* qp_table; } ;
struct TYPE_2__ {int ** table; int refcnt; } ;


 int free (int **) ;

void mlx4_clear_qp(struct mlx4_context *ctx, uint32_t qpn)
{
 int tind = (qpn & (ctx->num_qps - 1)) >> ctx->qp_table_shift;

 if (!--ctx->qp_table[tind].refcnt)
  free(ctx->qp_table[tind].table);
 else
  ctx->qp_table[tind].table[qpn & ctx->qp_table_mask] = ((void*)0);
}
