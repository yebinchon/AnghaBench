
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 scalar_t__ remote_debug ;
 int target_stop () ;

__attribute__((used)) static void
async_remote_interrupt (gdb_client_data arg)
{
  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "remote_interrupt called\n");

  target_stop ();
}
