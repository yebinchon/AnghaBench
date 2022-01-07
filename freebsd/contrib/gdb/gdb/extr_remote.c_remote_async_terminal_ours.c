
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_file_handler (int ,int ,int ) ;
 int cleanup_sigint_signal_handler (int *) ;
 int input_fd ;
 int remote_async_terminal_ours_p ;
 int stdin_event_handler ;
 int sync_execution ;

__attribute__((used)) static void
remote_async_terminal_ours (void)
{

  if (!sync_execution)
    return;

  if (remote_async_terminal_ours_p)
    return;
  cleanup_sigint_signal_handler (((void*)0));
  add_file_handler (input_fd, stdin_event_handler, 0);
  remote_async_terminal_ours_p = 1;
}
