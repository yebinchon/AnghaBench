
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_context {int dummy; } ;
struct ibv_context {int dummy; } ;


 int context ;
 int ctx ;
 struct mlx4_context* to_mxxx (int ,int ) ;

__attribute__((used)) static inline struct mlx4_context *to_mctx(struct ibv_context *ibctx)
{
 return to_mxxx(ctx, context);
}
