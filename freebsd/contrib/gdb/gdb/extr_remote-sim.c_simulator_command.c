
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int * gdbsim_desc ;
 int registers_changed () ;
 int sim_do_command (int *,char*) ;

void
simulator_command (char *args, int from_tty)
{
  if (gdbsim_desc == ((void*)0))
    {
      error ("Not connected to the simulator target");
    }

  sim_do_command (gdbsim_desc, args);



  registers_changed ();
}
