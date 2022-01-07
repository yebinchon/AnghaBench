
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ub_callback_type ;
struct ub_ctx {int created_bg; int qqpipe_lock; int qq_pipe; int cfglock; int num_async; int queries; int finalized; } ;
struct TYPE_2__ {int key; } ;
struct ctx_query {int querynum; TYPE_1__ node; } ;


 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_PIPE ;
 int context_finalize (struct ub_ctx*) ;
 struct ctx_query* context_new (struct ub_ctx*,char const*,int,int,int ,int *,void*) ;
 int context_query_delete (struct ctx_query*) ;
 int * context_serialize_new_query (struct ctx_query*,int *) ;
 int free (int *) ;
 int libworker_bg (struct ub_ctx*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int *,int ) ;
 int tube_write_msg (int ,int *,int ,int ) ;

int
ub_resolve_async(struct ub_ctx* ctx, const char* name, int rrtype,
 int rrclass, void* mydata, ub_callback_type callback, int* async_id)
{
 struct ctx_query* q;
 uint8_t* msg = ((void*)0);
 uint32_t len = 0;

 if(async_id)
  *async_id = 0;
 lock_basic_lock(&ctx->cfglock);
 if(!ctx->finalized) {
  int r = context_finalize(ctx);
  if(r) {
   lock_basic_unlock(&ctx->cfglock);
   return r;
  }
 }
 if(!ctx->created_bg) {
  int r;
  ctx->created_bg = 1;
  lock_basic_unlock(&ctx->cfglock);
  r = libworker_bg(ctx);
  if(r) {
   lock_basic_lock(&ctx->cfglock);
   ctx->created_bg = 0;
   lock_basic_unlock(&ctx->cfglock);
   return r;
  }
 } else {
  lock_basic_unlock(&ctx->cfglock);
 }


 q = context_new(ctx, name, rrtype, rrclass, callback, ((void*)0), mydata);
 if(!q)
  return UB_NOMEM;


 lock_basic_lock(&ctx->cfglock);
 msg = context_serialize_new_query(q, &len);
 if(!msg) {
  (void)rbtree_delete(&ctx->queries, q->node.key);
  ctx->num_async--;
  context_query_delete(q);
  lock_basic_unlock(&ctx->cfglock);
  return UB_NOMEM;
 }
 if(async_id)
  *async_id = q->querynum;
 lock_basic_unlock(&ctx->cfglock);

 lock_basic_lock(&ctx->qqpipe_lock);
 if(!tube_write_msg(ctx->qq_pipe, msg, len, 0)) {
  lock_basic_unlock(&ctx->qqpipe_lock);
  free(msg);
  return UB_PIPE;
 }
 lock_basic_unlock(&ctx->qqpipe_lock);
 free(msg);
 return UB_NOERROR;
}
