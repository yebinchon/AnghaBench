#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ui_out {int dummy; } ;
struct mi_parse {int op; char* token; int /*<<< orphan*/  command; int /*<<< orphan*/  args; } ;
struct captured_mi_execute_command_args {int /*<<< orphan*/  rc; void* action; struct mi_parse* command; } ;

/* Variables and functions */
#define  CLI_COMMAND 129 
 void* EXECUTE_COMMAND_DISPLAY_ERROR ; 
 void* EXECUTE_COMMAND_DISPLAY_PROMPT ; 
 void* EXECUTE_COMMAND_SUPRESS_PROMPT ; 
 int /*<<< orphan*/  INTERP_MI ; 
 int /*<<< orphan*/  INTERP_MI1 ; 
 int /*<<< orphan*/  INTERP_MI2 ; 
 int /*<<< orphan*/  INTERP_MI3 ; 
 int /*<<< orphan*/  MI_CMD_CAUGHT_ERROR ; 
 int /*<<< orphan*/  MI_CMD_DONE ; 
 int /*<<< orphan*/  MI_CMD_ERROR ; 
#define  MI_COMMAND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC4 (struct mi_parse*) ; 
 int /*<<< orphan*/  mi_debug_p ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_out*) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  sync_execution ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  target_executing ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (struct ui_out *uiout, void *data)
{
  struct captured_mi_execute_command_args *args =
    (struct captured_mi_execute_command_args *) data;
  struct mi_parse *context = args->command;

  switch (context->op)
    {

    case MI_COMMAND:
      /* A MI command was read from the input stream */
      if (mi_debug_p)
	/* FIXME: gdb_???? */
	FUNC1 (raw_stdout, " token=`%s' command=`%s' args=`%s'\n",
			    context->token, context->command, context->args);
      /* FIXME: cagney/1999-09-25: Rather than this convoluted
         condition expression, each function should return an
         indication of what action is required and then switch on
         that. */
      args->action = EXECUTE_COMMAND_DISPLAY_PROMPT;
      args->rc = FUNC4 (context);

      if (!FUNC8 () || !target_executing)
	{
	  /* print the result if there were no errors

	     Remember that on the way out of executing a command, you have
	     to directly use the mi_interp's uiout, since the command could 
	     have reset the interpreter, in which case the current uiout 
	     will most likely crash in the mi_out_* routines.  */
	  if (args->rc == MI_CMD_DONE)
	    {
	      FUNC2 (context->token, raw_stdout);
	      FUNC2 ("^done", raw_stdout);
	      FUNC6 (uiout, raw_stdout);
	      FUNC7 (uiout);
	      FUNC2 ("\n", raw_stdout);
	    }
	  else if (args->rc == MI_CMD_ERROR)
	    {
	      if (mi_error_message)
		{
		  FUNC2 (context->token, raw_stdout);
		  FUNC2 ("^error,msg=\"", raw_stdout);
		  FUNC3 (mi_error_message, '"', raw_stdout);
		  FUNC9 (mi_error_message);
		  FUNC2 ("\"\n", raw_stdout);
		}
	      FUNC7 (uiout);
	    }
	  else if (args->rc == MI_CMD_CAUGHT_ERROR)
	    {
	      FUNC7 (uiout);
	      args->action = EXECUTE_COMMAND_DISPLAY_ERROR;
	      return 1;
	    }
	  else
	    FUNC7 (uiout);
	}
      else if (sync_execution)
	{
	  /* Don't print the prompt. We are executing the target in
	     synchronous mode. */
	  args->action = EXECUTE_COMMAND_SUPRESS_PROMPT;
	  return 1;
	}
      break;

    case CLI_COMMAND:
      /* A CLI command was read from the input stream */
      /* This will be removed as soon as we have a complete set of
         mi commands */
      /* echo the command on the console. */
      FUNC1 (gdb_stdlog, "%s\n", context->command);
      FUNC5 (context->command, 0, NULL);

      /* If we changed interpreters, DON'T print out anything. */
      if (FUNC0 (INTERP_MI)
	  || FUNC0 (INTERP_MI1)
	  || FUNC0 (INTERP_MI2)
	  || FUNC0 (INTERP_MI3))
	{
	  /* print the result */
	  /* FIXME: Check for errors here. */
	  FUNC2 (context->token, raw_stdout);
	  FUNC2 ("^done", raw_stdout);
	  FUNC6 (uiout, raw_stdout);
	  FUNC7 (uiout);
	  FUNC2 ("\n", raw_stdout);
	  args->action = EXECUTE_COMMAND_DISPLAY_PROMPT;
	  args->rc = MI_CMD_DONE;
	}
      break;

    }

  return 1;
}