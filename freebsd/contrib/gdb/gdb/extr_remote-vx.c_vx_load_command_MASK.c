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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC10 (char *arg_string, int from_tty)
{
  CORE_ADDR text_addr;
  CORE_ADDR data_addr;
  CORE_ADDR bss_addr;

  if (arg_string == 0)
    FUNC2 ("The load command takes a file name");

  arg_string = FUNC8 (arg_string);
  FUNC3 (xfree, arg_string);

  FUNC1 ();

  /* Refuse to load the module if a debugged task is running.  Doing so
     can have a number of unpleasant consequences to the running task.  */

  if (FUNC0 (inferior_ptid) != 0 && target_has_execution)
    {
      if (FUNC5 ("You may not load a module while the target task is running.\n\
Kill the target task? "))
	FUNC7 ();
      else
	FUNC2 ("Load canceled.");
    }

  QUIT;
  immediate_quit++;
  if (FUNC4 (arg_string, &text_addr, &data_addr, &bss_addr) == -1)
    FUNC2 ("Load failed on target machine");
  immediate_quit--;

  FUNC9 (arg_string, from_tty, text_addr, data_addr, bss_addr);

  /* Getting new symbols may change our opinion about what is
     frameless.  */
  FUNC6 ();
}