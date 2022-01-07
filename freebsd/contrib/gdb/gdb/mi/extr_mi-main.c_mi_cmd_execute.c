
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mi_parse {char* token; int command; int args; TYPE_2__* cmd; int argc; int argv; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
struct TYPE_3__ {scalar_t__ cmd; int args_p; } ;
struct TYPE_4__ {int (* argv_func ) (int ,int ,int ) ;int (* args_func ) (int ,int ) ;TYPE_1__ cli; } ;


 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int fputs_unfiltered (char*,int ) ;
 int fputstr_unfiltered (int ,char,int ) ;
 int free_current_contents ;
 char* last_async_command ;
 int make_exec_cleanup (int ,char**) ;
 int mi_execute_cli_command (scalar_t__,int ,int ) ;
 void* previous_async_command ;
 int raw_stdout ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int ) ;
 scalar_t__ target_executing ;
 void* xstrdup (char*) ;

__attribute__((used)) static enum mi_cmd_result
mi_cmd_execute (struct mi_parse *parse)
{
  if (parse->cmd->argv_func != ((void*)0)
      || parse->cmd->args_func != ((void*)0))
    {
      if (target_executing)
 {
   if (!previous_async_command)
     previous_async_command = xstrdup (last_async_command);
   if (strcmp (parse->command, "exec-interrupt"))
     {
       fputs_unfiltered (parse->token, raw_stdout);
       fputs_unfiltered ("^error,msg=\"", raw_stdout);
       fputs_unfiltered ("Cannot execute command ", raw_stdout);
       fputstr_unfiltered (parse->command, '"', raw_stdout);
       fputs_unfiltered (" while target running", raw_stdout);
       fputs_unfiltered ("\"\n", raw_stdout);
       return MI_CMD_ERROR;
     }
 }
      last_async_command = xstrdup (parse->token);
      make_exec_cleanup (free_current_contents, &last_async_command);

      if (parse->cmd->args_func != ((void*)0))
 return parse->cmd->args_func (parse->args, 0 );
      return parse->cmd->argv_func (parse->command, parse->argv, parse->argc);
    }
  else if (parse->cmd->cli.cmd != 0)
    {



      mi_execute_cli_command (parse->cmd->cli.cmd, parse->cmd->cli.args_p,
         parse->args);
      return MI_CMD_DONE;
    }
  else
    {

      fputs_unfiltered (parse->token, raw_stdout);
      fputs_unfiltered ("^error,msg=\"", raw_stdout);
      fputs_unfiltered ("Undefined mi command: ", raw_stdout);
      fputstr_unfiltered (parse->command, '"', raw_stdout);
      fputs_unfiltered (" (missing implementation)", raw_stdout);
      fputs_unfiltered ("\"\n", raw_stdout);
      return MI_CMD_ERROR;
    }
}
