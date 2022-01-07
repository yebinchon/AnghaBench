
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* ub_event_callback_type ) (void*,int,void*,int,int,char*,int) ;
struct ub_ctx {int cfglock; int num_async; int queries; } ;
struct TYPE_4__ {int key; } ;
struct ctx_query {int cancelled; TYPE_2__ node; TYPE_1__* w; void* cb_arg; int (* cb_event ) (void*,int,void*,int,int,char*,int) ;} ;
typedef int sldns_buffer ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_3__ {struct ub_ctx* ctx; } ;


 int context_query_delete (struct ctx_query*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int *,int ) ;
 int sec_status_bogus ;
 int sec_status_secure ;
 scalar_t__ sldns_buffer_begin (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 int stub1 (void*,int,void*,int,int,char*,int) ;

void
libworker_event_done_cb(void* arg, int rcode, sldns_buffer* buf,
 enum sec_status s, char* why_bogus, int was_ratelimited)
{
 struct ctx_query* q = (struct ctx_query*)arg;
 ub_event_callback_type cb = q->cb_event;
 void* cb_arg = q->cb_arg;
 int cancelled = q->cancelled;


 struct ub_ctx* ctx = q->w->ctx;
 lock_basic_lock(&ctx->cfglock);
 (void)rbtree_delete(&ctx->queries, q->node.key);
 ctx->num_async--;
 context_query_delete(q);
 lock_basic_unlock(&ctx->cfglock);

 if(!cancelled) {

  int sec = 0;
  if(s == sec_status_bogus)
   sec = 1;
  else if(s == sec_status_secure)
   sec = 2;
  (*cb)(cb_arg, rcode, (buf?(void*)sldns_buffer_begin(buf):((void*)0)),
   (buf?(int)sldns_buffer_limit(buf):0), sec, why_bogus, was_ratelimited);
 }
}
