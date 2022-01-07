
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int cfglock; struct alloc_cache* alloc_list; } ;
struct alloc_cache {struct alloc_cache* super; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

void
context_release_alloc(struct ub_ctx* ctx, struct alloc_cache* alloc,
 int locking)
{
 if(!ctx || !alloc)
  return;
 if(locking) {
  lock_basic_lock(&ctx->cfglock);
 }
 alloc->super = ctx->alloc_list;
 ctx->alloc_list = alloc;
 if(locking) {
  lock_basic_unlock(&ctx->cfglock);
 }
}
