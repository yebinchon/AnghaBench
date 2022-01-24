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
struct continuation_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* last_async_command ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC4 (struct continuation_arg *arg)
{
  if (last_async_command)
    FUNC1 (last_async_command, raw_stdout);
  FUNC1 ("*stopped", raw_stdout);
  FUNC3 (uiout, raw_stdout);
  FUNC1 ("\n", raw_stdout);
  FUNC1 ("(gdb) \n", raw_stdout);
  FUNC2 (raw_stdout);
  FUNC0 (ALL_CLEANUPS);
}