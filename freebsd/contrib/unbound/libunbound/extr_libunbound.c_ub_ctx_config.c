
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_1__* env; scalar_t__ finalized; } ;
struct TYPE_2__ {int cfg; } ;


 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int UB_SYNTAX ;
 int config_read (int ,char const*,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

int
ub_ctx_config(struct ub_ctx* ctx, const char* fname)
{
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_AFTERFINAL;
 }
 if(!config_read(ctx->env->cfg, fname, ((void*)0))) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_SYNTAX;
 }
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
