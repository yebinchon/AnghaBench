
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_signal_handler {int dummy; } ;


 int SIGINT ;
 int delete_async_signal_handler (struct async_signal_handler**) ;
 int handle_sigint ;
 scalar_t__ sigint_remote_token ;
 scalar_t__ sigint_remote_twice_token ;
 int signal (int ,int ) ;

__attribute__((used)) static void
cleanup_sigint_signal_handler (void *dummy)
{
  signal (SIGINT, handle_sigint);
  if (sigint_remote_twice_token)
    delete_async_signal_handler ((struct async_signal_handler **) & sigint_remote_twice_token);
  if (sigint_remote_token)
    delete_async_signal_handler ((struct async_signal_handler **) & sigint_remote_token);
}
