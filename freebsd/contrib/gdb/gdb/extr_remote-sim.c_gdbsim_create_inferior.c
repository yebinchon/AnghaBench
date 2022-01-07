
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_SIGNAL_DEFAULT ;
 scalar_t__ alloca (int) ;
 char** buildargv (char*) ;
 int clear_proceed_status () ;
 scalar_t__ exec_bfd ;
 int gdbsim_desc ;
 int gdbsim_kill () ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int insert_breakpoints () ;
 int make_cleanup_freeargv (char**) ;
 int pid_to_ptid (int) ;
 int printf_filtered (char*,char*,char*) ;
 int proceed (int ,int ,int ) ;
 int program_loaded ;
 int remove_breakpoints () ;
 int sim_create_inferior (int ,scalar_t__,char**,char**) ;
 scalar_t__ sr_get_debug () ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int warning (char*) ;

__attribute__((used)) static void
gdbsim_create_inferior (char *exec_file, char *args, char **env)
{
  int len;
  char *arg_buf, **argv;

  if (exec_file == 0 || exec_bfd == 0)
    warning ("No executable file specified.");
  if (!program_loaded)
    warning ("No program loaded.");

  if (sr_get_debug ())
    printf_filtered ("gdbsim_create_inferior: exec_file \"%s\", args \"%s\"\n",
       (exec_file ? exec_file : "(NULL)"),
       args);

  gdbsim_kill ();
  remove_breakpoints ();
  init_wait_for_inferior ();

  if (exec_file != ((void*)0))
    {
      len = strlen (exec_file) + 1 + strlen (args) + 1 + 10;
      arg_buf = (char *) alloca (len);
      arg_buf[0] = '\0';
      strcat (arg_buf, exec_file);
      strcat (arg_buf, " ");
      strcat (arg_buf, args);
      argv = buildargv (arg_buf);
      make_cleanup_freeargv (argv);
    }
  else
    argv = ((void*)0);
  sim_create_inferior (gdbsim_desc, exec_bfd, argv, env);

  inferior_ptid = pid_to_ptid (42);
  insert_breakpoints ();

  clear_proceed_status ();


  proceed ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 0);
}
