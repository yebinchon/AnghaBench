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
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int MI_CMD_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* last_async_command ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mi_exec_async_cli_cmd_continuation ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC13 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

enum mi_cmd_result
FUNC15 (char *mi, char *args, int from_tty)
{
  struct cleanup *old_cleanups;
  char *run;
  char *async_args;

  if (FUNC12 ())
    {
      async_args = (char *) FUNC14 (FUNC11 (args) + 2);
      FUNC6 (free, async_args);
      FUNC10 (async_args, args);
      FUNC9 (async_args, "&");
      FUNC13 (&run, "%s %s", mi, async_args);
      FUNC6 (free, run);
      FUNC0 (mi_exec_async_cli_cmd_continuation, NULL);
      old_cleanups = NULL;
    }
  else
    {
      FUNC13 (&run, "%s %s", mi, args);
      old_cleanups = FUNC5 (xfree, run);
    }

  if (!FUNC12 ())
    {
      /* NOTE: For synchronous targets asynchronous behavour is faked by
         printing out the GDB prompt before we even try to execute the
         command. */
      if (last_async_command)
	FUNC3 (last_async_command, raw_stdout);
      FUNC3 ("^running\n", raw_stdout);
      FUNC3 ("(gdb) \n", raw_stdout);
      FUNC4 (raw_stdout);
    }
  else
    {
      /* FIXME: cagney/1999-11-29: Printing this message before
         calling execute_command is wrong.  It should only be printed
         once gdb has confirmed that it really has managed to send a
         run command to the target. */
      if (last_async_command)
	FUNC3 (last_async_command, raw_stdout);
      FUNC3 ("^running\n", raw_stdout);
    }

  FUNC2 ( /*ui */ run, 0 /*from_tty */ );

  if (!FUNC12 ())
    {
      /* Do this before doing any printing.  It would appear that some
         print code leaves garbage around in the buffer. */
      FUNC1 (old_cleanups);
      /* If the target was doing the operation synchronously we fake
         the stopped message. */
      if (last_async_command)
	FUNC3 (last_async_command, raw_stdout);
      FUNC3 ("*stopped", raw_stdout);
      FUNC7 (uiout, raw_stdout);
      FUNC8 (uiout);
      FUNC3 ("\n", raw_stdout);
      return MI_CMD_QUIET;
    }
  return MI_CMD_DONE;
}