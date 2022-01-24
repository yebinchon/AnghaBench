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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  args_info ; 
 int /*<<< orphan*/  args_plus_locals_info ; 
 int /*<<< orphan*/  backtrace_command ; 
 int /*<<< orphan*/  backtrace_full_command ; 
 int backtrace_limit ; 
 int /*<<< orphan*/  backtrace_limit_info ; 
 int /*<<< orphan*/  catch_info ; 
 int /*<<< orphan*/  class_alias ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  class_stack ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  current_frame_command ; 
 scalar_t__ dbx_commands ; 
 int /*<<< orphan*/  down_command ; 
 int /*<<< orphan*/  down_silently_command ; 
 int /*<<< orphan*/  frame_command ; 
 int /*<<< orphan*/  frame_info ; 
 int /*<<< orphan*/  func_command ; 
 int /*<<< orphan*/  locals_info ; 
 int /*<<< orphan*/  return_command ; 
 int /*<<< orphan*/  select_frame_command ; 
 int /*<<< orphan*/  set_backtrace_limit_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  up_command ; 
 int /*<<< orphan*/  up_silently_command ; 
 scalar_t__ xdb_commands ; 

void
FUNC5 (void)
{
#if 0
  backtrace_limit = 30;
#endif

  FUNC1 ("return", class_stack, return_command,
	   "Make selected stack frame return to its caller.\n\
Control remains in the debugger, but when you continue\n\
execution will resume in the frame above the one now selected.\n\
If an argument is given, it is an expression for the value to return.");

  FUNC1 ("up", class_stack, up_command,
	   "Select and print stack frame that called this one.\n\
An argument says how many frames up to go.");
  FUNC1 ("up-silently", class_support, up_silently_command,
	   "Same as the `up' command, but does not print anything.\n\
This is useful in command scripts.");

  FUNC1 ("down", class_stack, down_command,
	   "Select and print stack frame called by this one.\n\
An argument says how many frames down to go.");
  FUNC2 ("do", "down", class_stack, 1);
  FUNC2 ("dow", "down", class_stack, 1);
  FUNC1 ("down-silently", class_support, down_silently_command,
	   "Same as the `down' command, but does not print anything.\n\
This is useful in command scripts.");

  FUNC1 ("frame", class_stack, frame_command,
	   "Select and print a stack frame.\n\
With no argument, print the selected stack frame.  (See also \"info frame\").\n\
An argument specifies the frame to select.\n\
It can be a stack frame number or the address of the frame.\n\
With argument, nothing is printed if input is coming from\n\
a command file or a user-defined command.");

  FUNC2 ("f", "frame", class_stack, 1);

  if (xdb_commands)
    {
      FUNC1 ("L", class_stack, current_frame_command,
	       "Print the current stack frame.\n");
      FUNC2 ("V", "frame", class_stack, 1);
    }
  FUNC1 ("select-frame", class_stack, select_frame_command,
	   "Select a stack frame without printing anything.\n\
An argument specifies the frame to select.\n\
It can be a stack frame number or the address of the frame.\n");

  FUNC1 ("backtrace", class_stack, backtrace_command,
	   "Print backtrace of all stack frames, or innermost COUNT frames.\n\
With a negative argument, print outermost -COUNT frames.\n\
Use of the 'full' qualifier also prints the values of the local variables.\n");
  FUNC2 ("bt", "backtrace", class_stack, 0);
  if (xdb_commands)
    {
      FUNC2 ("t", "backtrace", class_stack, 0);
      FUNC1 ("T", class_stack, backtrace_full_command,
	       "Print backtrace of all stack frames, or innermost COUNT frames \n\
and the values of the local variables.\n\
With a negative argument, print outermost -COUNT frames.\n\
Usage: T <count>\n");
    }

  FUNC2 ("where", "backtrace", class_alias, 0);
  FUNC3 ("stack", backtrace_command,
	    "Backtrace of the stack, or innermost COUNT frames.");
  FUNC4 ("s", "stack", 1);
  FUNC3 ("frame", frame_info,
	    "All about selected stack frame, or frame at ADDR.");
  FUNC4 ("f", "frame", 1);
  FUNC3 ("locals", locals_info,
	    "Local variables of current stack frame.");
  FUNC3 ("args", args_info,
	    "Argument variables of current stack frame.");
  if (xdb_commands)
    FUNC1 ("l", class_info, args_plus_locals_info,
	     "Argument and local variables of current stack frame.");

  if (dbx_commands)
    FUNC1 ("func", class_stack, func_command,
      "Select the stack frame that contains <func>.\nUsage: func <name>\n");

  FUNC3 ("catch", catch_info,
	    "Exceptions that can be caught in the current stack frame.");

#if 0
  add_cmd ("backtrace-limit", class_stack, set_backtrace_limit_command,
  "Specify maximum number of frames for \"backtrace\" to print by default.",
	   &setlist);
  add_info ("backtrace-limit", backtrace_limit_info,
     "The maximum number of frames for \"backtrace\" to print by default.");
#endif
}