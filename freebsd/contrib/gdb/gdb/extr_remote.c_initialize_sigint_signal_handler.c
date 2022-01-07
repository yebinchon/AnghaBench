
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int async_remote_interrupt ;
 int create_async_signal_handler (int ,int *) ;
 int handle_remote_sigint ;
 int sigint_remote_token ;
 int signal (int ,int ) ;

__attribute__((used)) static void
initialize_sigint_signal_handler (void)
{
  sigint_remote_token =
    create_async_signal_handler (async_remote_interrupt, ((void*)0));
  signal (SIGINT, handle_remote_sigint);
}
