
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct mi_parse {int op; char* token; int command; int args; } ;
struct captured_mi_execute_command_args {int rc; void* action; struct mi_parse* command; } ;



 void* EXECUTE_COMMAND_DISPLAY_ERROR ;
 void* EXECUTE_COMMAND_DISPLAY_PROMPT ;
 void* EXECUTE_COMMAND_SUPRESS_PROMPT ;
 int INTERP_MI ;
 int INTERP_MI1 ;
 int INTERP_MI2 ;
 int INTERP_MI3 ;
 int MI_CMD_CAUGHT_ERROR ;
 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;

 int current_interp_named_p (int ) ;
 int fprintf_unfiltered (int ,char*,char*,...) ;
 int fputs_unfiltered (char*,int ) ;
 int fputstr_unfiltered (int ,char,int ) ;
 int gdb_stdlog ;
 int mi_cmd_execute (struct mi_parse*) ;
 int mi_debug_p ;
 int mi_error_message ;
 int mi_execute_cli_command (int ,int ,int *) ;
 int mi_out_put (struct ui_out*,int ) ;
 int mi_out_rewind (struct ui_out*) ;
 int raw_stdout ;
 int sync_execution ;
 int target_can_async_p () ;
 int target_executing ;
 int xfree (int ) ;

__attribute__((used)) static int
captured_mi_execute_command (struct ui_out *uiout, void *data)
{
  struct captured_mi_execute_command_args *args =
    (struct captured_mi_execute_command_args *) data;
  struct mi_parse *context = args->command;

  switch (context->op)
    {

    case 128:

      if (mi_debug_p)

 fprintf_unfiltered (raw_stdout, " token=`%s' command=`%s' args=`%s'\n",
       context->token, context->command, context->args);




      args->action = EXECUTE_COMMAND_DISPLAY_PROMPT;
      args->rc = mi_cmd_execute (context);

      if (!target_can_async_p () || !target_executing)
 {






   if (args->rc == MI_CMD_DONE)
     {
       fputs_unfiltered (context->token, raw_stdout);
       fputs_unfiltered ("^done", raw_stdout);
       mi_out_put (uiout, raw_stdout);
       mi_out_rewind (uiout);
       fputs_unfiltered ("\n", raw_stdout);
     }
   else if (args->rc == MI_CMD_ERROR)
     {
       if (mi_error_message)
  {
    fputs_unfiltered (context->token, raw_stdout);
    fputs_unfiltered ("^error,msg=\"", raw_stdout);
    fputstr_unfiltered (mi_error_message, '"', raw_stdout);
    xfree (mi_error_message);
    fputs_unfiltered ("\"\n", raw_stdout);
  }
       mi_out_rewind (uiout);
     }
   else if (args->rc == MI_CMD_CAUGHT_ERROR)
     {
       mi_out_rewind (uiout);
       args->action = EXECUTE_COMMAND_DISPLAY_ERROR;
       return 1;
     }
   else
     mi_out_rewind (uiout);
 }
      else if (sync_execution)
 {


   args->action = EXECUTE_COMMAND_SUPRESS_PROMPT;
   return 1;
 }
      break;

    case 129:




      fprintf_unfiltered (gdb_stdlog, "%s\n", context->command);
      mi_execute_cli_command (context->command, 0, ((void*)0));


      if (current_interp_named_p (INTERP_MI)
   || current_interp_named_p (INTERP_MI1)
   || current_interp_named_p (INTERP_MI2)
   || current_interp_named_p (INTERP_MI3))
 {


   fputs_unfiltered (context->token, raw_stdout);
   fputs_unfiltered ("^done", raw_stdout);
   mi_out_put (uiout, raw_stdout);
   mi_out_rewind (uiout);
   fputs_unfiltered ("\n", raw_stdout);
   args->action = EXECUTE_COMMAND_DISPLAY_PROMPT;
   args->rc = MI_CMD_DONE;
 }
      break;

    }

  return 1;
}
