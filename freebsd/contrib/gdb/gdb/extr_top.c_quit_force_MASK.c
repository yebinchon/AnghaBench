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
struct value {int dummy; } ;
struct qt_args {char* args; int from_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qt_args*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct value* FUNC2 (char*) ; 
 int /*<<< orphan*/  quit_target ; 
 scalar_t__ FUNC3 (struct value*) ; 

void
FUNC4 (char *args, int from_tty)
{
  int exit_code = 0;
  struct qt_args qt;

  /* An optional expression may be used to cause gdb to terminate with the 
     value of that expression. */
  if (args)
    {
      struct value *val = FUNC2 (args);

      exit_code = (int) FUNC3 (val);
    }

  qt.args = args;
  qt.from_tty = from_tty;

  /* We want to handle any quit errors and exit regardless.  */
  FUNC0 (quit_target, &qt,
	        "Quitting: ", RETURN_MASK_ALL);

  FUNC1 (exit_code);
}