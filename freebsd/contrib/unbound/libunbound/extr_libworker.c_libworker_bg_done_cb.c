
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ub_ctx {int cfglock; int num_async; int queries; } ;
struct TYPE_6__ {int key; } ;
struct ctx_query {int msg_security; TYPE_4__* w; TYPE_2__ node; scalar_t__ cancelled; } ;
typedef int sldns_buffer ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_8__ {TYPE_3__* env; struct ub_ctx* ctx; scalar_t__ is_bg_thread; TYPE_1__* back; } ;
struct TYPE_7__ {int * scratch_buffer; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;


 int BIT_RD ;
 int UB_NOERROR ;
 int add_bg_result (TYPE_4__*,struct ctx_query*,int *,int ,char*,int) ;
 int context_query_delete (struct ctx_query*) ;
 int error_encode (int *,int,int *,int ,int ,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int *,int ) ;

void
libworker_bg_done_cb(void* arg, int rcode, sldns_buffer* buf, enum sec_status s,
 char* why_bogus, int was_ratelimited)
{
 struct ctx_query* q = (struct ctx_query*)arg;

 if(q->cancelled || q->w->back->want_to_quit) {
  if(q->w->is_bg_thread) {

   struct ub_ctx* ctx = q->w->ctx;
   lock_basic_lock(&ctx->cfglock);
   (void)rbtree_delete(&ctx->queries, q->node.key);
   ctx->num_async--;
   context_query_delete(q);
   lock_basic_unlock(&ctx->cfglock);
  }

  return;
 }
 q->msg_security = s;
 if(!buf) {
  buf = q->w->env->scratch_buffer;
 }
 if(rcode != 0) {
  error_encode(buf, rcode, ((void*)0), 0, BIT_RD, ((void*)0));
 }
 add_bg_result(q->w, q, buf, UB_NOERROR, why_bogus, was_ratelimited);
}
