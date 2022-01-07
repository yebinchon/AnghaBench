
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 scalar_t__ remote_debug ;
 int remote_interrupt_twice ;
 int signal (int,int ) ;
 int target_stop () ;

__attribute__((used)) static void
remote_interrupt (int signo)
{

  signal (signo, remote_interrupt_twice);

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "remote_interrupt called\n");

  target_stop ();
}
