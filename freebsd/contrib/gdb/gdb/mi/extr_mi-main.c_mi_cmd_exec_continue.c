
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int mi_execute_async_cli_command (char*,char*,int) ;

enum mi_cmd_result
mi_cmd_exec_continue (char *args, int from_tty)
{

  return mi_execute_async_cli_command ("continue", args, from_tty);
}
