
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int error (char*) ;
 int select_frame_command (char*,int) ;
 int target_has_stack ;

enum mi_cmd_result
mi_cmd_stack_select_frame (char *command, char **argv, int argc)
{
  if (!target_has_stack)
    error ("mi_cmd_stack_select_frame: No stack.");

  if (argc > 1)
    error ("mi_cmd_stack_select_frame: Usage: [FRAME_SPEC]");


  if (argc == 0)
    select_frame_command (0, 1 );
  else
    select_frame_command (argv[0], 1 );
  return MI_CMD_DONE;
}
