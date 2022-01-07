
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int execute_command (char*,int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int xasprintf (char**,char*,char const*,char const*) ;
 int xfree ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
env_execute_cli_command (const char *cmd, const char *args)
{
  if (cmd != 0)
    {
      struct cleanup *old_cleanups;
      char *run;
      if (args != ((void*)0))
 xasprintf (&run, "%s %s", cmd, args);
      else
 run = xstrdup (cmd);
      old_cleanups = make_cleanup (xfree, run);
      execute_command ( run, 0 );
      do_cleanups (old_cleanups);
      return;
    }
}
