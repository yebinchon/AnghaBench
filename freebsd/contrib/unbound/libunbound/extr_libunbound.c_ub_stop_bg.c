
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ub_ctx {int cfglock; int bg_pid; int bg_tid; scalar_t__ dothread; int rrpipe_lock; int rr_pipe; int qqpipe_lock; int qq_pipe; scalar_t__ created_bg; } ;
typedef int cmd ;


 scalar_t__ UB_LIBCMD_QUIT ;
 scalar_t__ context_serial_getcmd (int *,scalar_t__) ;
 int errno ;
 int free (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*,int ) ;
 int strerror (int ) ;
 scalar_t__ tube_read_msg (int ,int **,scalar_t__*,int ) ;
 int tube_write_msg (int ,int *,scalar_t__,int ) ;
 int ub_thread_join (int ) ;
 int verbosity ;
 int waitpid (int ,int *,int ) ;

__attribute__((used)) static void ub_stop_bg(struct ub_ctx* ctx)
{

 lock_basic_lock(&ctx->cfglock);
 if(ctx->created_bg) {
  uint8_t* msg;
  uint32_t len;
  uint32_t cmd = UB_LIBCMD_QUIT;
  lock_basic_unlock(&ctx->cfglock);
  lock_basic_lock(&ctx->qqpipe_lock);
  (void)tube_write_msg(ctx->qq_pipe, (uint8_t*)&cmd,
   (uint32_t)sizeof(cmd), 0);
  lock_basic_unlock(&ctx->qqpipe_lock);
  lock_basic_lock(&ctx->rrpipe_lock);
  while(tube_read_msg(ctx->rr_pipe, &msg, &len, 0)) {

   if(context_serial_getcmd(msg, len) == UB_LIBCMD_QUIT) {
    free(msg);
    break;
   }
   free(msg);
  }
  lock_basic_unlock(&ctx->rrpipe_lock);



  lock_basic_lock(&ctx->cfglock);
  if(ctx->dothread) {
   lock_basic_unlock(&ctx->cfglock);
   ub_thread_join(ctx->bg_tid);
  } else {
   lock_basic_unlock(&ctx->cfglock);

   if(waitpid(ctx->bg_pid, ((void*)0), 0) == -1) {
    if(verbosity > 2)
     log_err("waitpid: %s", strerror(errno));
   }

  }
 }
 else {
  lock_basic_unlock(&ctx->cfglock);
 }
}
