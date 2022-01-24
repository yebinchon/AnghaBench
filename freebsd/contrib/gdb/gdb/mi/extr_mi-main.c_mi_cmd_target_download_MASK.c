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
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char*) ; 
 int /*<<< orphan*/  xfree ; 

enum mi_cmd_result
FUNC4 (char *args, int from_tty)
{
  char *run;
  struct cleanup *old_cleanups = NULL;

  FUNC3 (&run, "load %s", args);
  old_cleanups = FUNC2 (xfree, run);
  FUNC1 (run, from_tty);

  FUNC0 (old_cleanups);
  return MI_CMD_DONE;
}