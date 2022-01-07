
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * ub_event_callback_type ;
typedef int * ub_callback_type ;
struct TYPE_2__ {int * key; } ;
struct ub_result {int async; int qtype; int qclass; TYPE_1__ node; struct ub_result* res; int qname; void* cb_arg; int * cb_event; int * cb; int querynum; } ;
struct ub_ctx {int cfglock; int queries; int num_async; } ;
struct ctx_query {int async; int qtype; int qclass; TYPE_1__ node; struct ctx_query* res; int qname; void* cb_arg; int * cb_event; int * cb; int querynum; } ;


 scalar_t__ calloc (int,int) ;
 int find_id (struct ub_ctx*,int *) ;
 int free (struct ub_result*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_insert (int *,TYPE_1__*) ;
 int strdup (char const*) ;

struct ctx_query*
context_new(struct ub_ctx* ctx, const char* name, int rrtype, int rrclass,
 ub_callback_type cb, ub_event_callback_type cb_event, void* cbarg)
{
 struct ctx_query* q = (struct ctx_query*)calloc(1, sizeof(*q));
 if(!q) return ((void*)0);
 lock_basic_lock(&ctx->cfglock);
 if(!find_id(ctx, &q->querynum)) {
  lock_basic_unlock(&ctx->cfglock);
  free(q);
  return ((void*)0);
 }
 lock_basic_unlock(&ctx->cfglock);
 q->node.key = &q->querynum;
 q->async = (cb != ((void*)0) || cb_event != ((void*)0));
 q->cb = cb;
 q->cb_event = cb_event;
 q->cb_arg = cbarg;
 q->res = (struct ub_result*)calloc(1, sizeof(*q->res));
 if(!q->res) {
  free(q);
  return ((void*)0);
 }
 q->res->qname = strdup(name);
 if(!q->res->qname) {
  free(q->res);
  free(q);
  return ((void*)0);
 }
 q->res->qtype = rrtype;
 q->res->qclass = rrclass;


 lock_basic_lock(&ctx->cfglock);
 if(q->async)
  ctx->num_async ++;
 (void)rbtree_insert(&ctx->queries, &q->node);
 lock_basic_unlock(&ctx->cfglock);
 return q;
}
