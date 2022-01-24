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
 int /*<<< orphan*/  FROM_TTY ; 
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* last_async_command ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  uiout ; 

enum mi_cmd_result
FUNC3 (char *command, char **argv, int argc)
{
  /* We have to print everything right here because we never return */
  if (last_async_command)
    FUNC0 (last_async_command, raw_stdout);
  FUNC0 ("^exit\n", raw_stdout);
  FUNC1 (uiout, raw_stdout);
  /* FIXME: The function called is not yet a formal libgdb function */
  FUNC2 (NULL, FROM_TTY);
  return MI_CMD_DONE;
}