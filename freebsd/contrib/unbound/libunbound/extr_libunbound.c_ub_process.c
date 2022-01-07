
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ub_ctx {int rrpipe_lock; int rr_pipe; } ;


 int UB_NOERROR ;
 int UB_PIPE ;
 int free (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int process_answer (struct ub_ctx*,int *,int ) ;
 int tube_read_msg (int ,int **,int *,int) ;

int
ub_process(struct ub_ctx* ctx)
{
 int r;
 uint8_t* msg;
 uint32_t len;
 while(1) {
  msg = ((void*)0);
  lock_basic_lock(&ctx->rrpipe_lock);
  r = tube_read_msg(ctx->rr_pipe, &msg, &len, 1);
  lock_basic_unlock(&ctx->rrpipe_lock);
  if(r == 0)
   return UB_PIPE;
  else if(r == -1)
   break;
  if(!process_answer(ctx, msg, len)) {
   free(msg);
   return UB_PIPE;
  }
  free(msg);
 }
 return UB_NOERROR;
}
