
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int * ub_callback_type ;
struct ub_result {int answer_len; int * answer_packet; int rcode; } ;
struct ub_ctx {int cfglock; int num_async; int queries; } ;
struct regional {int dummy; } ;
struct TYPE_2__ {int key; } ;
struct ctx_query {TYPE_1__ node; struct ub_result* res; int * msg; scalar_t__ msg_len; int msg_security; void* cb_arg; int * cb; scalar_t__ cancelled; int async; } ;
typedef int sldns_buffer ;


 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ UB_LIBCMD_ANSWER ;
 struct ctx_query* context_deserialize_answer (struct ub_ctx*,int *,int ,int*) ;
 int context_query_delete (struct ctx_query*) ;
 scalar_t__ context_serial_getcmd (int *,int ) ;
 int libworker_enter_result (struct ub_result*,int *,struct regional*,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int ) ;
 int log_err (char*,int) ;
 int rbtree_delete (int *,int ) ;
 struct regional* regional_create () ;
 int regional_destroy (struct regional*) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_free (int *) ;
 int * sldns_buffer_new (scalar_t__) ;
 int sldns_buffer_write (int *,int *,scalar_t__) ;
 int ub_resolve_free (struct ub_result*) ;

__attribute__((used)) static int
process_answer_detail(struct ub_ctx* ctx, uint8_t* msg, uint32_t len,
 ub_callback_type* cb, void** cbarg, int* err,
 struct ub_result** res)
{
 struct ctx_query* q;
 if(context_serial_getcmd(msg, len) != UB_LIBCMD_ANSWER) {
  log_err("error: bad data from bg worker %d",
   (int)context_serial_getcmd(msg, len));
  return 0;
 }

 lock_basic_lock(&ctx->cfglock);
 q = context_deserialize_answer(ctx, msg, len, err);
 if(!q) {
  lock_basic_unlock(&ctx->cfglock);


  return 1;
 }
 log_assert(q->async);


 if(q->cancelled) {
  *cb = ((void*)0);
  *cbarg = ((void*)0);
 } else {
  *cb = q->cb;
  *cbarg = q->cb_arg;
 }
 if(*err) {
  *res = ((void*)0);
  ub_resolve_free(q->res);
 } else {

  sldns_buffer* buf = sldns_buffer_new(q->msg_len);
  struct regional* region = regional_create();
  *res = q->res;
  (*res)->rcode = LDNS_RCODE_SERVFAIL;
  if(region && buf) {
   sldns_buffer_clear(buf);
   sldns_buffer_write(buf, q->msg, q->msg_len);
   sldns_buffer_flip(buf);
   libworker_enter_result(*res, buf, region,
    q->msg_security);
  }
  (*res)->answer_packet = q->msg;
  (*res)->answer_len = (int)q->msg_len;
  q->msg = ((void*)0);
  sldns_buffer_free(buf);
  regional_destroy(region);
 }
 q->res = ((void*)0);

 (void)rbtree_delete(&ctx->queries, q->node.key);
 ctx->num_async--;
 context_query_delete(q);
 lock_basic_unlock(&ctx->cfglock);

 if(*cb) return 2;
 ub_resolve_free(*res);
 return 1;
}
