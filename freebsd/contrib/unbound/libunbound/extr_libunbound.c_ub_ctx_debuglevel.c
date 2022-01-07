
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_2__* env; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int verbosity; } ;


 int UB_NOERROR ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int verbosity ;

int
ub_ctx_debuglevel(struct ub_ctx* ctx, int d)
{
 lock_basic_lock(&ctx->cfglock);
 verbosity = d;
 ctx->env->cfg->verbosity = d;
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
