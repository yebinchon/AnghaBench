
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_qp {int * bf; } ;
struct mlx5_context {int * bfs; } ;
struct ibv_context {int dummy; } ;


 struct mlx5_context* to_mctx (struct ibv_context*) ;

__attribute__((used)) static void map_uuar(struct ibv_context *context, struct mlx5_qp *qp,
       int uuar_index)
{
 struct mlx5_context *ctx = to_mctx(context);

 qp->bf = &ctx->bfs[uuar_index];
}
