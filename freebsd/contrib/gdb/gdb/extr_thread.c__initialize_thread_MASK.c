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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**,char*,int,struct cmd_list_element**) ; 
 int /*<<< orphan*/  class_run ; 
 struct cmd_list_element* cmdlist ; 
 int /*<<< orphan*/  info_threads_command ; 
 int /*<<< orphan*/  thread_apply_all_command ; 
 int /*<<< orphan*/  thread_apply_command ; 
 struct cmd_list_element* thread_cmd_list ; 
 int /*<<< orphan*/  thread_command ; 
 int /*<<< orphan*/  xdb_commands ; 

void
FUNC4 (void)
{
  static struct cmd_list_element *thread_apply_list = NULL;

  FUNC2 ("threads", info_threads_command,
	    "IDs of currently known threads.");

  FUNC3 ("thread", class_run, thread_command,
		  "Use this command to switch between threads.\n\
The new thread ID must be currently known.", &thread_cmd_list, "thread ", 1, &cmdlist);

  FUNC3 ("apply", class_run, thread_apply_command,
		  "Apply a command to a list of threads.",
		  &thread_apply_list, "apply ", 1, &thread_cmd_list);

  FUNC0 ("all", class_run, thread_apply_all_command,
	   "Apply a command to all threads.", &thread_apply_list);

  if (!xdb_commands)
    FUNC1 ("t", "thread", class_run, 1);
}