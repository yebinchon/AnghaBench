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

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 char* FUNC4 () ; 
 scalar_t__ instream ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_cleanup ; 
 scalar_t__ quit_flag ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ stdin ; 
 int /*<<< orphan*/  stop_bpstat ; 
 char* FUNC7 (char*) ; 
 void FUNC8 (char*,int) ; 

void
FUNC9 (char *(*read_input_func) (char *),
			 void (*execute_command_func) (char *, int))
{
  struct cleanup *old_chain;
  char *command;
  int stdin_is_tty = FUNC0 (stdin);

  while (instream && !FUNC3 (instream))
    {
      quit_flag = 0;
      if (instream == stdin && stdin_is_tty)
	FUNC6 ();
      old_chain = FUNC5 (null_cleanup, 0);

      /* Get a command-line. */
      command = (*read_input_func) (instream == stdin ?
				    FUNC4 () : (char *) NULL);

      if (command == 0)
	return;

      (*execute_command_func) (command, instream == stdin);

      /* Do any commands attached to breakpoint we stopped at.  */
      FUNC1 (&stop_bpstat);

      FUNC2 (old_chain);
    }
}