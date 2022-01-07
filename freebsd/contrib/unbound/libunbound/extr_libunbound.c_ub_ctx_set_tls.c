
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int ssl_upstream; } ;


 int EINVAL ;
 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int errno ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

int ub_ctx_set_tls(struct ub_ctx* ctx, int tls)
{
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  errno=EINVAL;
  return UB_AFTERFINAL;
 }
 ctx->env->cfg->ssl_upstream = tls;
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
