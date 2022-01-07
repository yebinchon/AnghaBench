
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation_arg {int dummy; } ;


 int ALL_CLEANUPS ;
 int do_exec_cleanups (int ) ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_flush (int ) ;
 char* last_async_command ;
 int mi_out_put (int ,int ) ;
 int raw_stdout ;
 int uiout ;

void
mi_exec_async_cli_cmd_continuation (struct continuation_arg *arg)
{
  if (last_async_command)
    fputs_unfiltered (last_async_command, raw_stdout);
  fputs_unfiltered ("*stopped", raw_stdout);
  mi_out_put (uiout, raw_stdout);
  fputs_unfiltered ("\n", raw_stdout);
  fputs_unfiltered ("(gdb) \n", raw_stdout);
  gdb_flush (raw_stdout);
  do_exec_cleanups (ALL_CLEANUPS);
}
