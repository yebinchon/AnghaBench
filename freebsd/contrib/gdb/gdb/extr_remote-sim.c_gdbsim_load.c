
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIM_RC_FAIL ;
 int error (char*) ;
 int gdbsim_desc ;
 int inferior_ptid ;
 int null_ptid ;
 int printf_filtered (char*,char*) ;
 int program_loaded ;
 scalar_t__ sim_load (int ,char*,int *,int) ;
 scalar_t__ sr_get_debug () ;

__attribute__((used)) static void
gdbsim_load (char *prog, int fromtty)
{
  if (sr_get_debug ())
    printf_filtered ("gdbsim_load: prog \"%s\"\n", prog);

  inferior_ptid = null_ptid;




  if (sim_load (gdbsim_desc, prog, ((void*)0), fromtty) == SIM_RC_FAIL)
    error ("unable to load program");




  program_loaded = 1;
}
