
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int execute_command (char*,int ) ;
 int fprintf_unfiltered (int ,char*,char const*,char*) ;
 int gdb_stdout ;
 struct cleanup* make_cleanup (int ,char*) ;
 scalar_t__ mi_debug_p ;
 int xasprintf (char**,char*,char const*,char const*) ;
 int xfree ;
 char* xstrdup (char const*) ;

void
mi_execute_cli_command (const char *cmd, int args_p, const char *args)
{
  if (cmd != 0)
    {
      struct cleanup *old_cleanups;
      char *run;
      if (args_p)
 xasprintf (&run, "%s %s", cmd, args);
      else
 run = xstrdup (cmd);
      if (mi_debug_p)

 fprintf_unfiltered (gdb_stdout, "cli=%s run=%s\n",
       cmd, run);
      old_cleanups = make_cleanup (xfree, run);
      execute_command ( run, 0 );
      do_cleanups (old_cleanups);
      return;
    }
}
