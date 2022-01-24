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
 int /*<<< orphan*/  LOC_AND_ADDRESS ; 
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

enum mi_cmd_result
FUNC3 (char *args, int from_tty)
{
  /* This command doesn't really execute the target, it just pops the
     specified number of frames. */
  if (*args)
    /* Call return_command with from_tty argument equal to 0 so as to
       avoid being queried. */
    FUNC2 (args, 0);
  else
    /* Call return_command with from_tty argument equal to 0 so as to
       avoid being queried. */
    FUNC2 (NULL, 0);

  /* Because we have called return_command with from_tty = 0, we need
     to print the frame here. */
  FUNC1 (deprecated_selected_frame,
		     FUNC0 (deprecated_selected_frame),
		     LOC_AND_ADDRESS);

  return MI_CMD_DONE;
}