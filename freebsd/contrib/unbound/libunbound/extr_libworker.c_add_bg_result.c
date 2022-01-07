
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct libworker {TYPE_3__* ctx; scalar_t__ is_bg_thread; scalar_t__ want_quit; } ;
struct TYPE_5__ {int key; } ;
struct ctx_query {TYPE_2__ node; TYPE_1__* res; int msg; int msg_len; } ;
typedef int sldns_buffer ;
struct TYPE_6__ {int rr_pipe; int num_async; int queries; int cfglock; } ;
struct TYPE_4__ {int was_ratelimited; void* why_bogus; } ;


 int UB_NOMEM ;
 int context_query_delete (struct ctx_query*) ;
 int * context_serialize_answer (struct ctx_query*,int,int *,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int memdup (int ,int ) ;
 int rbtree_delete (int *,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_remaining (int *) ;
 void* strdup (char*) ;
 int tube_queue_item (int ,int *,int ) ;

__attribute__((used)) static void
add_bg_result(struct libworker* w, struct ctx_query* q, sldns_buffer* pkt,
 int err, char* reason, int was_ratelimited)
{
 uint8_t* msg = ((void*)0);
 uint32_t len = 0;

 if(w->want_quit) {
  context_query_delete(q);
  return;
 }

 if(w->is_bg_thread) {
  lock_basic_lock(&w->ctx->cfglock);
  if(reason)
   q->res->why_bogus = strdup(reason);
  q->res->was_ratelimited = was_ratelimited;
  if(pkt) {
   q->msg_len = sldns_buffer_remaining(pkt);
   q->msg = memdup(sldns_buffer_begin(pkt), q->msg_len);
   if(!q->msg) {
    msg = context_serialize_answer(q, UB_NOMEM, ((void*)0), &len);
   } else {
    msg = context_serialize_answer(q, err, ((void*)0), &len);
   }
  } else {
   msg = context_serialize_answer(q, err, ((void*)0), &len);
  }
  lock_basic_unlock(&w->ctx->cfglock);
 } else {
  if(reason)
   q->res->why_bogus = strdup(reason);
  q->res->was_ratelimited = was_ratelimited;
  msg = context_serialize_answer(q, err, pkt, &len);
  (void)rbtree_delete(&w->ctx->queries, q->node.key);
  w->ctx->num_async--;
  context_query_delete(q);
 }

 if(!msg) {
  log_err("out of memory for async answer");
  return;
 }
 if(!tube_queue_item(w->ctx->rr_pipe, msg, len)) {
  log_err("out of memory for async answer");
  return;
 }
}
