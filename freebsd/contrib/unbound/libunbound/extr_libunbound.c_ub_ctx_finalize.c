
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int cfglock; int finalized; } ;


 int context_finalize (struct ub_ctx*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

__attribute__((used)) static int ub_ctx_finalize(struct ub_ctx* ctx)
{
 int res = 0;
 lock_basic_lock(&ctx->cfglock);
 if (!ctx->finalized) {
  res = context_finalize(ctx);
 }
 lock_basic_unlock(&ctx->cfglock);
 return res;
}
