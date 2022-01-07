
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int SIGINT ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 int handle_remote_sigint ;
 int interrupt_query () ;
 scalar_t__ remote_debug ;
 int signal (int ,int ) ;
 scalar_t__ target_executing ;

void
async_remote_interrupt_twice (gdb_client_data arg)
{
  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "remote_interrupt_twice called\n");


  if (target_executing)
    {
      interrupt_query ();
      signal (SIGINT, handle_remote_sigint);
    }
}
