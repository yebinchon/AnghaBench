
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {struct alloc_cache* super; } ;
struct ub_ctx {struct alloc_cache superalloc; int cfglock; int thr_next_num; struct alloc_cache* alloc_list; } ;


 int alloc_init (struct alloc_cache*,struct alloc_cache*,int) ;
 scalar_t__ calloc (int,int) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

struct alloc_cache*
context_obtain_alloc(struct ub_ctx* ctx, int locking)
{
 struct alloc_cache* a;
 int tnum = 0;
 if(locking) {
  lock_basic_lock(&ctx->cfglock);
 }
 a = ctx->alloc_list;
 if(a)
  ctx->alloc_list = a->super;
 else tnum = ctx->thr_next_num++;
 if(locking) {
  lock_basic_unlock(&ctx->cfglock);
 }
 if(a) {
  a->super = &ctx->superalloc;
  return a;
 }
 a = (struct alloc_cache*)calloc(1, sizeof(*a));
 if(!a)
  return ((void*)0);
 alloc_init(a, &ctx->superalloc, tnum);
 return a;
}
