
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int rr_pipe; int qq_pipe; int bg_pid; int cfglock; int bg_tid; scalar_t__ dothread; } ;
struct libworker {int is_bg_thread; int thread_num; } ;


 int UB_FORKFAIL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int exit (int ) ;
 int fatal_exit (char*) ;
 int fork () ;
 int libworker_dobg (struct libworker*) ;
 struct libworker* libworker_setup (struct ub_ctx*,int,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int tube_close_read (int ) ;
 int tube_close_write (int ) ;
 int ub_thread_create (int *,int (*) (struct libworker*),struct libworker*) ;

int libworker_bg(struct ub_ctx* ctx)
{
 struct libworker* w;

 lock_basic_lock(&ctx->cfglock);
 if(ctx->dothread) {
  lock_basic_unlock(&ctx->cfglock);
  w = libworker_setup(ctx, 1, ((void*)0));
  if(!w) return UB_NOMEM;
  w->is_bg_thread = 1;



  ub_thread_create(&ctx->bg_tid, libworker_dobg, w);
 } else {
  lock_basic_unlock(&ctx->cfglock);


  return UB_FORKFAIL;
 }
 return UB_NOERROR;
}
