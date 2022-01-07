
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int ALL_CLEANUPS ;
 int MI_CMD_QUIET ;
 int do_cleanups (struct cleanup*) ;
 int do_exec_cleanups (int ) ;
 int execute_command (char*,int) ;
 int fputs_unfiltered (char*,int ) ;
 char* last_async_command ;
 struct cleanup* make_cleanup (int ,char*) ;
 int mi_out_put (int ,int ) ;
 int mi_out_rewind (int ) ;
 int raw_stdout ;
 int uiout ;
 int xasprintf (char**,char*,char*) ;
 int xfree ;

enum mi_cmd_result
mi_cmd_target_select (char *args, int from_tty)
{
  char *run;
  struct cleanup *old_cleanups = ((void*)0);

  xasprintf (&run, "target %s", args);
  old_cleanups = make_cleanup (xfree, run);






  execute_command (run, from_tty);

  do_cleanups (old_cleanups);


  if (last_async_command)
    fputs_unfiltered (last_async_command, raw_stdout);
  fputs_unfiltered ("^connected", raw_stdout);
  mi_out_put (uiout, raw_stdout);
  mi_out_rewind (uiout);
  fputs_unfiltered ("\n", raw_stdout);
  do_exec_cleanups (ALL_CLEANUPS);
  return MI_CMD_QUIET;
}
