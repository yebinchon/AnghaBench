
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_callbacks () ;
 int * gdbsim_desc ;
 int generic_mourn_inferior () ;
 int printf_filtered (char*,int) ;
 scalar_t__ program_loaded ;
 int sim_close (int *,int) ;
 scalar_t__ sr_get_debug () ;

__attribute__((used)) static void
gdbsim_close (int quitting)
{
  if (sr_get_debug ())
    printf_filtered ("gdbsim_close: quitting %d\n", quitting);

  program_loaded = 0;

  if (gdbsim_desc != ((void*)0))
    {
      sim_close (gdbsim_desc, quitting);
      gdbsim_desc = ((void*)0);
    }

  end_callbacks ();
  generic_mourn_inferior ();
}
