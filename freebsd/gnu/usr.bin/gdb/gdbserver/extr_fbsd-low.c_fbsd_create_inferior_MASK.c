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
 int /*<<< orphan*/  PT_TRACE_ME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 

__attribute__((used)) static int
FUNC11 (char *program, char **allargs)
{
  void *new_process;
  int pid;

  pid = FUNC10 ();
  if (pid < 0)
    FUNC6 ("vfork");

  if (pid == 0)
    {
      FUNC7 (PT_TRACE_ME, 0, 0, 0);

      FUNC8 (0, 0);

      FUNC3 (program, allargs);

      FUNC5 (stderr, "Cannot exec %s: %s.\n", program,
	       FUNC9 (errno));
      FUNC4 (stderr);
      FUNC0 (0177);
    }

  new_process = FUNC1 (pid);
  FUNC2 (pid, new_process);

  return pid;
}