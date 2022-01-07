
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dothread; int cfglock; scalar_t__ finalized; } ;


 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

int
ub_ctx_async(struct ub_ctx* ctx, int dothread)
{




 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_AFTERFINAL;
 }
 ctx->dothread = dothread;
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
