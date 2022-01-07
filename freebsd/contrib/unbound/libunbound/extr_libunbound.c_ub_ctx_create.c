
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {struct ub_ctx* env; int mods; int cfg; int seed_rnd; int * qq_pipe; int * rr_pipe; } ;


 int config_delete (int ) ;
 int edns_known_options_delete (struct ub_ctx*) ;
 int errno ;
 int free (struct ub_ctx*) ;
 int modstack_desetup (int *,struct ub_ctx*) ;
 void* tube_create () ;
 int tube_delete (int *) ;
 struct ub_ctx* ub_ctx_create_nopipe () ;
 int ub_randfree (int ) ;

struct ub_ctx*
ub_ctx_create(void)
{
 struct ub_ctx* ctx = ub_ctx_create_nopipe();
 if(!ctx)
  return ((void*)0);
 if((ctx->qq_pipe = tube_create()) == ((void*)0)) {
  int e = errno;
  ub_randfree(ctx->seed_rnd);
  config_delete(ctx->env->cfg);
  modstack_desetup(&ctx->mods, ctx->env);
  edns_known_options_delete(ctx->env);
  free(ctx->env);
  free(ctx);
  errno = e;
  return ((void*)0);
 }
 if((ctx->rr_pipe = tube_create()) == ((void*)0)) {
  int e = errno;
  tube_delete(ctx->qq_pipe);
  ub_randfree(ctx->seed_rnd);
  config_delete(ctx->env->cfg);
  modstack_desetup(&ctx->mods, ctx->env);
  edns_known_options_delete(ctx->env);
  free(ctx->env);
  free(ctx);
  errno = e;
  return ((void*)0);
 }
 return ctx;
}
