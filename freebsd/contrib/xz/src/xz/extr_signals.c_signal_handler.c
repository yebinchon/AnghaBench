
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_signal ;
 int io_write_to_user_abort_pipe () ;
 int user_abort ;

__attribute__((used)) static void
signal_handler(int sig)
{
 exit_signal = sig;
 user_abort = 1;


 io_write_to_user_abort_pipe();


 return;
}
