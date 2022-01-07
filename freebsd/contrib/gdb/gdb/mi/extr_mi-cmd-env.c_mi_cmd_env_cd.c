
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int env_execute_cli_command (char*,char*) ;
 int error (char*) ;

enum mi_cmd_result
mi_cmd_env_cd (char *command, char **argv, int argc)
{
  if (argc == 0 || argc > 1)
    error ("mi_cmd_env_cd: Usage DIRECTORY");

  env_execute_cli_command ("cd", argv[0]);

  return MI_CMD_DONE;
}
