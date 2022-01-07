
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
 int config_set_option (int ,char const*,char const*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

int
ub_ctx_set_option(struct ub_ctx* ctx, const char* opt, const char* val)
{
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_AFTERFINAL;
 }
 if(!config_set_option(ctx->env->cfg, opt, val)) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_SYNTAX;
 }
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
