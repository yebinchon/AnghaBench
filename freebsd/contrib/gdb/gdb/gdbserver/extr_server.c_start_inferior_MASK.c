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
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 unsigned char FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int signal_pid ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned char
FUNC6 (char *argv[], char *statusptr)
{
  FUNC4 (SIGTTOU, SIG_DFL);
  FUNC4 (SIGTTIN, SIG_DFL);

  signal_pid = FUNC0 (argv[0], argv);

  FUNC2 (stderr, "Process %s created; pid = %d\n", argv[0],
	   signal_pid);

  FUNC4 (SIGTTOU, SIG_IGN);
  FUNC4 (SIGTTIN, SIG_IGN);
  FUNC5 (FUNC1 (stderr), signal_pid);

  /* Wait till we are at 1st instruction in program, return signal number.  */
  return FUNC3 (statusptr, 0);
}