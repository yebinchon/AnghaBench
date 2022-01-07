
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context {int dummy; } ;
struct c4iw_context {int dummy; } ;


 int context ;
 int ctx ;
 struct c4iw_context* to_c4iw_xxx (int ,int ) ;

__attribute__((used)) static inline struct c4iw_context *to_c4iw_context(struct ibv_context *ibctx)
{
 return to_c4iw_xxx(ctx, context);
}
