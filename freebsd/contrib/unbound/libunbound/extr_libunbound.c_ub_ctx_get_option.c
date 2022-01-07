
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_1__* env; } ;
struct TYPE_2__ {int cfg; } ;


 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_SYNTAX ;
 int config_get_option_collate (int ,char const*,char**) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

int
ub_ctx_get_option(struct ub_ctx* ctx, const char* opt, char** str)
{
 int r;
 lock_basic_lock(&ctx->cfglock);
 r = config_get_option_collate(ctx->env->cfg, opt, str);
 lock_basic_unlock(&ctx->cfglock);
 if(r == 0) r = UB_NOERROR;
 else if(r == 1) r = UB_SYNTAX;
 else if(r == 2) r = UB_NOMEM;
 return r;
}
