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
struct interp_procs {int dummy; } ;
struct interp {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct interp*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct interp*) ; 
 struct interp* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  mi_interpreter_exec_continuation ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  raw_stdout ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 int sync_execution ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ target_executing ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int) ; 

enum mi_cmd_result
FUNC16 (char *command, char **argv, int argc)
{
  struct interp *interp_to_use;
  enum mi_cmd_result result = MI_CMD_DONE;
  int i;
  struct interp_procs *procs;

  if (argc < 2)
    {
      FUNC13 (&mi_error_message,
		 "mi_cmd_interpreter_exec: Usage: -interpreter-exec interp command");
      return MI_CMD_ERROR;
    }

  interp_to_use = FUNC5 (argv[0]);
  if (interp_to_use == NULL)
    {
      FUNC13 (&mi_error_message,
		 "mi_cmd_interpreter_exec: could not find interpreter \"%s\"",
		 argv[0]);
      return MI_CMD_ERROR;
    }

  if (!FUNC4 (interp_to_use))
    {
      FUNC13 (&mi_error_message,
		 "mi_cmd_interpreter_exec: interpreter \"%s\" does not support command execution",
		 argv[0]);
      return MI_CMD_ERROR;
    }

  /* Insert the MI out hooks, making sure to also call the interpreter's hooks
     if it has any. */
  /* KRS: We shouldn't need this... Events should be installed and they should
     just ALWAYS fire something out down the MI channel... */
  FUNC8 ();

  /* Now run the code... */

  for (i = 1; i < argc; i++)
    {
      char *buff = NULL;
      /* Do this in a cleaner way...  We want to force execution to be
         asynchronous for commands that run the target.  */
      if (FUNC12 () && (FUNC10 (argv[0], "console") == 0))
	{
	  int len = FUNC11 (argv[i]);
	  buff = FUNC15 (len + 2);
	  FUNC6 (buff, argv[i], len);
	  buff[len] = '&';
	  buff[len + 1] = '\0';
	}

      /* We had to set sync_execution = 0 for the mi (well really for Project
         Builder's use of the mi - particularly so interrupting would work.
         But for console commands to work, we need to initialize it to 1 -
         since that is what the cli expects - before running the command,
         and then set it back to 0 when we are done. */
      sync_execution = 1;
      if (FUNC3 (interp_to_use, argv[i]) < 0)
	{
	  FUNC7 ();
	  result = MI_CMD_ERROR;
	  break;
	}
      FUNC14 (buff);
      FUNC1 (ALL_CLEANUPS);
      sync_execution = 0;
    }

  FUNC9 ();

  /* Okay, now let's see if the command set the inferior going...
     Tricky point - have to do this AFTER resetting the interpreter, since
     changing the interpreter will clear out all the continuations for
     that interpreter... */

  if (FUNC12 () && target_executing)
    {
      FUNC2 ("^running\n", raw_stdout);
      FUNC0 (mi_interpreter_exec_continuation, NULL);
    }

  return result;
}