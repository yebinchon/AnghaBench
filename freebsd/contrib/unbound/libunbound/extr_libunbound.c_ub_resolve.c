
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_result {int answer_len; int * answer_packet; } ;
struct ub_ctx {int cfglock; int queries; int finalized; } ;
struct TYPE_2__ {int key; } ;
struct ctx_query {TYPE_1__ node; struct ub_result* res; int * msg; scalar_t__ msg_len; } ;


 int UB_NOERROR ;
 int UB_NOMEM ;
 int context_finalize (struct ub_ctx*) ;
 struct ctx_query* context_new (struct ub_ctx*,char const*,int,int,int *,int *,int *) ;
 int context_query_delete (struct ctx_query*) ;
 int libworker_fg (struct ub_ctx*,struct ctx_query*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int *,int ) ;

int
ub_resolve(struct ub_ctx* ctx, const char* name, int rrtype,
 int rrclass, struct ub_result** result)
{
 struct ctx_query* q;
 int r;
 *result = ((void*)0);

 lock_basic_lock(&ctx->cfglock);
 if(!ctx->finalized) {
  r = context_finalize(ctx);
  if(r) {
   lock_basic_unlock(&ctx->cfglock);
   return r;
  }
 }

 lock_basic_unlock(&ctx->cfglock);
 q = context_new(ctx, name, rrtype, rrclass, ((void*)0), ((void*)0), ((void*)0));
 if(!q)
  return UB_NOMEM;


 r = libworker_fg(ctx, q);
 if(r) {
  lock_basic_lock(&ctx->cfglock);
  (void)rbtree_delete(&ctx->queries, q->node.key);
  context_query_delete(q);
  lock_basic_unlock(&ctx->cfglock);
  return r;
 }
 q->res->answer_packet = q->msg;
 q->res->answer_len = (int)q->msg_len;
 q->msg = ((void*)0);
 *result = q->res;
 q->res = ((void*)0);

 lock_basic_lock(&ctx->cfglock);
 (void)rbtree_delete(&ctx->queries, q->node.key);
 context_query_delete(q);
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
