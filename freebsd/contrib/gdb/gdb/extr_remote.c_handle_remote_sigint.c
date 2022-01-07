
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_remote_interrupt_twice ;
 int create_async_signal_handler (int ,int *) ;
 int handle_remote_sigint_twice ;
 int mark_async_signal_handler_wrapper (int ) ;
 int sigint_remote_token ;
 int sigint_remote_twice_token ;
 int signal (int,int ) ;

__attribute__((used)) static void
handle_remote_sigint (int sig)
{
  signal (sig, handle_remote_sigint_twice);
  sigint_remote_twice_token =
    create_async_signal_handler (async_remote_interrupt_twice, ((void*)0));
  mark_async_signal_handler_wrapper (sigint_remote_token);
}
