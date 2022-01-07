
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wrid; } ;
struct mlx5_rwq {TYPE_1__ rq; int buf; } ;
struct mlx5_context {int dummy; } ;
struct ibv_context {int dummy; } ;


 int free (int ) ;
 int mlx5_free_actual_buf (struct mlx5_context*,int *) ;
 struct mlx5_context* to_mctx (struct ibv_context*) ;

__attribute__((used)) static void mlx5_free_rwq_buf(struct mlx5_rwq *rwq, struct ibv_context *context)
{
 struct mlx5_context *ctx = to_mctx(context);

 mlx5_free_actual_buf(ctx, &rwq->buf);
 free(rwq->rq.wrid);
}
