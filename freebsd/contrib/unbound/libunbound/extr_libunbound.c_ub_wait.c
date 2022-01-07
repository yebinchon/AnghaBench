
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int (* ub_callback_type ) (void*,int,struct ub_result*) ;
struct ub_result {int dummy; } ;
struct ub_ctx {scalar_t__ num_async; int rrpipe_lock; int rr_pipe; int cfglock; } ;


 int UB_NOERROR ;
 int UB_PIPE ;
 int free (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int process_answer_detail (struct ub_ctx*,int *,int ,int (*) (void*,int,struct ub_result*),void**,int*,struct ub_result**) ;
 int stub1 (void*,int,struct ub_result*) ;
 int tube_read_msg (int ,int **,int *,int) ;
 int tube_wait (int ) ;

int
ub_wait(struct ub_ctx* ctx)
{
 int err;
 ub_callback_type cb;
 void* cbarg;
 struct ub_result* res;
 int r;
 uint8_t* msg;
 uint32_t len;


 while(1) {
  lock_basic_lock(&ctx->rrpipe_lock);
  lock_basic_lock(&ctx->cfglock);
  if(ctx->num_async == 0) {
   lock_basic_unlock(&ctx->cfglock);
   lock_basic_unlock(&ctx->rrpipe_lock);
   break;
  }
  lock_basic_unlock(&ctx->cfglock);







  r = tube_wait(ctx->rr_pipe);
  if(r) {
   r = tube_read_msg(ctx->rr_pipe, &msg, &len, 1);
   if(r == 0) {
    lock_basic_unlock(&ctx->rrpipe_lock);
    return UB_PIPE;
   }
   if(r == -1) {
    lock_basic_unlock(&ctx->rrpipe_lock);
    continue;
   }
   r = process_answer_detail(ctx, msg, len,
    &cb, &cbarg, &err, &res);
   lock_basic_unlock(&ctx->rrpipe_lock);
   free(msg);
   if(r == 0)
    return UB_PIPE;
   if(r == 2)
    (*cb)(cbarg, err, res);
  } else {
   lock_basic_unlock(&ctx->rrpipe_lock);
  }
 }
 return UB_NOERROR;
}
