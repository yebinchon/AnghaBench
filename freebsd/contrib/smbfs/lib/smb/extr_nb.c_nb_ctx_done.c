
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_ctx {scalar_t__ nb_scope; } ;


 int free (scalar_t__) ;

void
nb_ctx_done(struct nb_ctx *ctx)
{
 if (ctx == ((void*)0))
  return;
 if (ctx->nb_scope)
  free(ctx->nb_scope);
}
