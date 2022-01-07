
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int MI_CMD_QUIET ;
 int add_continuation (int ,int *) ;
 int do_cleanups (struct cleanup*) ;
 int execute_command (char*,int ) ;
 int fputs_unfiltered (char*,int ) ;
 int free ;
 int gdb_flush (int ) ;
 char* last_async_command ;
 struct cleanup* make_cleanup (int ,char*) ;
 int make_exec_cleanup (int ,char*) ;
 int mi_exec_async_cli_cmd_continuation ;
 int mi_out_put (int ,int ) ;
 int mi_out_rewind (int ) ;
 int raw_stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ target_can_async_p () ;
 int uiout ;
 int xasprintf (char**,char*,char*,char*) ;
 int xfree ;
 scalar_t__ xmalloc (scalar_t__) ;

enum mi_cmd_result
mi_execute_async_cli_command (char *mi, char *args, int from_tty)
{
  struct cleanup *old_cleanups;
  char *run;
  char *async_args;

  if (target_can_async_p ())
    {
      async_args = (char *) xmalloc (strlen (args) + 2);
      make_exec_cleanup (free, async_args);
      strcpy (async_args, args);
      strcat (async_args, "&");
      xasprintf (&run, "%s %s", mi, async_args);
      make_exec_cleanup (free, run);
      add_continuation (mi_exec_async_cli_cmd_continuation, ((void*)0));
      old_cleanups = ((void*)0);
    }
  else
    {
      xasprintf (&run, "%s %s", mi, args);
      old_cleanups = make_cleanup (xfree, run);
    }

  if (!target_can_async_p ())
    {



      if (last_async_command)
 fputs_unfiltered (last_async_command, raw_stdout);
      fputs_unfiltered ("^running\n", raw_stdout);
      fputs_unfiltered ("(gdb) \n", raw_stdout);
      gdb_flush (raw_stdout);
    }
  else
    {




      if (last_async_command)
 fputs_unfiltered (last_async_command, raw_stdout);
      fputs_unfiltered ("^running\n", raw_stdout);
    }

  execute_command ( run, 0 );

  if (!target_can_async_p ())
    {


      do_cleanups (old_cleanups);


      if (last_async_command)
 fputs_unfiltered (last_async_command, raw_stdout);
      fputs_unfiltered ("*stopped", raw_stdout);
      mi_out_put (uiout, raw_stdout);
      mi_out_rewind (uiout);
      fputs_unfiltered ("\n", raw_stdout);
      return MI_CMD_QUIET;
    }
  return MI_CMD_DONE;
}
