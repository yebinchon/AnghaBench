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
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_ERROR ; 
 int MI_CMD_QUIET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char* last_async_command ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* previous_async_command ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  target_executing ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 

enum mi_cmd_result
FUNC7 (char *args, int from_tty)
{
  if (!target_executing)
    {
      FUNC4 (&mi_error_message,
		 "mi_cmd_exec_interrupt: Inferior not executing.");
      return MI_CMD_ERROR;
    }
  FUNC1 (args, from_tty);
  if (last_async_command)
    FUNC0 (last_async_command, raw_stdout);
  FUNC0 ("^done", raw_stdout);
  FUNC5 (last_async_command);
  if (previous_async_command)
    last_async_command = FUNC6 (previous_async_command);
  FUNC5 (previous_async_command);
  previous_async_command = NULL;
  FUNC2 (uiout, raw_stdout);
  FUNC3 (uiout);
  FUNC0 ("\n", raw_stdout);
  return MI_CMD_QUIET;
}