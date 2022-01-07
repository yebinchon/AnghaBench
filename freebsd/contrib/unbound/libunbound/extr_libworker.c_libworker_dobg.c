
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ub_ctx {int rr_pipe; int qq_pipe; } ;
struct libworker {int want_quit; struct ub_ctx* ctx; int base; scalar_t__ is_bg_thread; int thread_num; } ;
typedef int m ;


 int UB_LIBCMD_QUIT ;
 int comm_base_dispatch (int ) ;
 int libworker_delete (struct libworker*) ;
 int libworker_handle_control_cmd ;
 int log_err (char*) ;
 int log_thread_set (int *) ;
 int tube_close_read (int ) ;
 int tube_close_write (int ) ;
 int tube_remove_bg_listen (int ) ;
 int tube_remove_bg_write (int ) ;
 int tube_setup_bg_listen (int ,int ,int ,struct libworker*) ;
 int tube_setup_bg_write (int ,int ) ;
 int tube_write_msg (int ,int *,int ,int ) ;

__attribute__((used)) static void*
libworker_dobg(void* arg)
{

 uint32_t m;
 struct libworker* w = (struct libworker*)arg;
 struct ub_ctx* ctx;
 if(!w) {
  log_err("libunbound bg worker init failed, nomem");
  return ((void*)0);
 }
 ctx = w->ctx;
 log_thread_set(&w->thread_num);







 if(!tube_setup_bg_listen(ctx->qq_pipe, w->base,
  libworker_handle_control_cmd, w)) {
  log_err("libunbound bg worker init failed, no bglisten");
  return ((void*)0);
 }
 if(!tube_setup_bg_write(ctx->rr_pipe, w->base)) {
  log_err("libunbound bg worker init failed, no bgwrite");
  return ((void*)0);
 }


 comm_base_dispatch(w->base);


 m = UB_LIBCMD_QUIT;
 w->want_quit = 1;
 tube_remove_bg_listen(w->ctx->qq_pipe);
 tube_remove_bg_write(w->ctx->rr_pipe);
 libworker_delete(w);
 (void)tube_write_msg(ctx->rr_pipe, (uint8_t*)&m,
  (uint32_t)sizeof(m), 0);





 return ((void*)0);
}
