
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIM_OPEN_DEBUG ;
 scalar_t__ alloca (int) ;
 char** buildargv (char*) ;
 int error (char*) ;
 int exec_bfd ;
 int gdb_callback ;
 int * gdbsim_desc ;
 int gdbsim_ops ;
 int init_callbacks () ;
 int make_cleanup_freeargv (char**) ;
 int printf_filtered (char*,...) ;
 int push_target (int *) ;
 char* selected_architecture_name () ;
 int selected_byte_order () ;
 int * sim_open (int ,int *,int ,char**) ;
 scalar_t__ sr_get_debug () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int target_fetch_registers (int) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
gdbsim_open (char *args, int from_tty)
{
  int len;
  char *arg_buf;
  char **argv;

  if (sr_get_debug ())
    printf_filtered ("gdbsim_open: args \"%s\"\n", args ? args : "(null)");







  if (gdbsim_desc != ((void*)0))
    unpush_target (&gdbsim_ops);

  len = (7 + 1
  + strlen (" -E little")
  + strlen (" --architecture=xxxxxxxxxx")
  + (args ? strlen (args) : 0)
  + 50) ;
  arg_buf = (char *) alloca (len);
  strcpy (arg_buf, "gdbsim");


  switch (selected_byte_order ())
    {
    case 130:
      strcat (arg_buf, " -E big");
      break;
    case 129:
      strcat (arg_buf, " -E little");
      break;
    case 128:
      break;
    }


  if (selected_architecture_name () != ((void*)0))
    {
      strcat (arg_buf, " --architecture=");
      strcat (arg_buf, selected_architecture_name ());
    }

  if (args)
    {
      strcat (arg_buf, " ");
      strcat (arg_buf, args);
    }
  argv = buildargv (arg_buf);
  if (argv == ((void*)0))
    error ("Insufficient memory available to allocate simulator arg list.");
  make_cleanup_freeargv (argv);

  init_callbacks ();
  gdbsim_desc = sim_open (SIM_OPEN_DEBUG, &gdb_callback, exec_bfd, argv);

  if (gdbsim_desc == 0)
    error ("unable to create simulator instance");

  push_target (&gdbsim_ops);
  target_fetch_registers (-1);
  printf_filtered ("Connected to the simulator.\n");
}
