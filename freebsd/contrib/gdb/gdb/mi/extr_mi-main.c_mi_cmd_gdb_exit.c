
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int FROM_TTY ;
 int MI_CMD_DONE ;
 int fputs_unfiltered (char*,int ) ;
 char* last_async_command ;
 int mi_out_put (int ,int ) ;
 int quit_force (int *,int ) ;
 int raw_stdout ;
 int uiout ;

enum mi_cmd_result
mi_cmd_gdb_exit (char *command, char **argv, int argc)
{

  if (last_async_command)
    fputs_unfiltered (last_async_command, raw_stdout);
  fputs_unfiltered ("^exit\n", raw_stdout);
  mi_out_put (uiout, raw_stdout);

  quit_force (((void*)0), FROM_TTY);
  return MI_CMD_DONE;
}
