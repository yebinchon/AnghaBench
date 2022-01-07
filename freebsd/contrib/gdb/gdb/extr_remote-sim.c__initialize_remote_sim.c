
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_target (int *) ;
 int class_obscure ;
 int gdbsim_ops ;
 int init_gdbsim_ops () ;
 int simulator_command ;

void
_initialize_remote_sim (void)
{
  init_gdbsim_ops ();
  add_target (&gdbsim_ops);

  add_com ("sim <command>", class_obscure, simulator_command,
    "Send a command to the simulator.");
}
