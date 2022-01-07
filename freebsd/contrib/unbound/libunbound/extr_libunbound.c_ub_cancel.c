
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ub_ctx {int cfglock; int qqpipe_lock; int qq_pipe; int num_async; int queries; int dothread; } ;
struct TYPE_2__ {int key; } ;
struct ctx_query {int cancelled; TYPE_1__ node; int async; } ;


 int UB_NOERROR ;
 int UB_NOID ;
 int UB_NOMEM ;
 int UB_PIPE ;
 int context_query_delete (struct ctx_query*) ;
 int * context_serialize_cancel (struct ctx_query*,int *) ;
 int free (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int ) ;
 int rbtree_delete (int *,int ) ;
 scalar_t__ rbtree_search (int *,int*) ;
 int tube_write_msg (int ,int *,int ,int ) ;

int
ub_cancel(struct ub_ctx* ctx, int async_id)
{
 struct ctx_query* q;
 uint8_t* msg = ((void*)0);
 uint32_t len = 0;
 lock_basic_lock(&ctx->cfglock);
 q = (struct ctx_query*)rbtree_search(&ctx->queries, &async_id);
 if(!q || !q->async) {

  lock_basic_unlock(&ctx->cfglock);
  return UB_NOID;
 }
 log_assert(q->async);
 q->cancelled = 1;


 if(!ctx->dothread) {
  (void)rbtree_delete(&ctx->queries, q->node.key);
  ctx->num_async--;
  msg = context_serialize_cancel(q, &len);
  context_query_delete(q);
  lock_basic_unlock(&ctx->cfglock);
  if(!msg) {
   return UB_NOMEM;
  }

  lock_basic_lock(&ctx->qqpipe_lock);
  if(!tube_write_msg(ctx->qq_pipe, msg, len, 0)) {
   lock_basic_unlock(&ctx->qqpipe_lock);
   free(msg);
   return UB_PIPE;
  }
  lock_basic_unlock(&ctx->qqpipe_lock);
  free(msg);
 } else {
  lock_basic_unlock(&ctx->cfglock);
 }
 return UB_NOERROR;
}
