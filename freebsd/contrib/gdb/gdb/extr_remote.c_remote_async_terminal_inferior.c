
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_file_handler (int ) ;
 int initialize_sigint_signal_handler () ;
 int input_fd ;
 scalar_t__ remote_async_terminal_ours_p ;
 int sync_execution ;

__attribute__((used)) static void
remote_async_terminal_inferior (void)
{





  if (!sync_execution)
    return;






  if (!remote_async_terminal_ours_p)
    return;
  delete_file_handler (input_fd);
  remote_async_terminal_ours_p = 0;
  initialize_sigint_signal_handler ();



}
