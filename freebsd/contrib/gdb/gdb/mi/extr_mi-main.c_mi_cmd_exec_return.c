
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int LOC_AND_ADDRESS ;
 int MI_CMD_DONE ;
 int deprecated_selected_frame ;
 int frame_relative_level (int ) ;
 int print_stack_frame (int ,int ,int ) ;
 int return_command (char*,int ) ;

enum mi_cmd_result
mi_cmd_exec_return (char *args, int from_tty)
{


  if (*args)


    return_command (args, 0);
  else


    return_command (((void*)0), 0);



  print_stack_frame (deprecated_selected_frame,
       frame_relative_level (deprecated_selected_frame),
       LOC_AND_ADDRESS);

  return MI_CMD_DONE;
}
