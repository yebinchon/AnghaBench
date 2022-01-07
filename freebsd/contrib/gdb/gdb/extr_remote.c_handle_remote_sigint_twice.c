
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_async_signal_handler (int ,int *) ;
 int handle_sigint ;
 int inferior_event_handler_wrapper ;
 int mark_async_signal_handler_wrapper (int ) ;
 int sigint_remote_twice_token ;
 int signal (int,int ) ;

__attribute__((used)) static void
handle_remote_sigint_twice (int sig)
{
  signal (sig, handle_sigint);
  sigint_remote_twice_token =
    create_async_signal_handler (inferior_event_handler_wrapper, ((void*)0));
  mark_async_signal_handler_wrapper (sigint_remote_twice_token);
}
