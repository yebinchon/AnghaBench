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
struct mi_parse {char* token; } ;
struct cleanup {int dummy; } ;
struct captured_mi_execute_command_args {scalar_t__ action; struct mi_parse* command; } ;

/* Variables and functions */
 scalar_t__ EXECUTE_COMMAND_DISPLAY_ERROR ; 
 scalar_t__ EXECUTE_COMMAND_SUPRESS_PROMPT ; 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  captured_mi_execute_command ; 
 int FUNC0 (struct ui_out*,int /*<<< orphan*/ ,struct captured_mi_execute_command_args*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct mi_parse* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mi_parse*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  raw_stdout ; 
 struct ui_out* uiout ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC9 (char *cmd, int from_tty)
{
  struct mi_parse *command;
  struct captured_mi_execute_command_args args;
  struct ui_out *saved_uiout = uiout;
  int result;

  /* This is to handle EOF (^D). We just quit gdb. */
  /* FIXME: we should call some API function here. */
  if (cmd == 0)
    FUNC8 (NULL, from_tty);

  command = FUNC6 (cmd);

  if (command != NULL)
    {
      /* FIXME: cagney/1999-11-04: Can this use of catch_exceptions either
         be pushed even further down or even eliminated? */
      args.command = command;
      result = FUNC0 (uiout, captured_mi_execute_command, &args, "",
				 RETURN_MASK_ALL);

      if (args.action == EXECUTE_COMMAND_SUPRESS_PROMPT)
	{
	  /* The command is executing synchronously.  Bail out early
	     suppressing the finished prompt. */
	  FUNC7 (command);
	  return;
	}
      if (args.action == EXECUTE_COMMAND_DISPLAY_ERROR || result < 0)
	{
	  char *msg = FUNC1 ();
	  struct cleanup *cleanup = FUNC5 (xfree, msg);
	  /* The command execution failed and error() was called
	     somewhere */
	  FUNC2 (command->token, raw_stdout);
	  FUNC2 ("^error,msg=\"", raw_stdout);
	  FUNC3 (msg, '"', raw_stdout);
	  FUNC2 ("\"\n", raw_stdout);
	}
      FUNC7 (command);
    }

  FUNC2 ("(gdb) \n", raw_stdout);
  FUNC4 (raw_stdout);
  /* print any buffered hook code */
  /* ..... */
}