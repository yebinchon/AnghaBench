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
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procfs_suppress_run ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

char *
FUNC7 (ptid_t ptid)
{
  static char buf[100];

  /* in case init failed to resolve the libthread_db library */
  if (!procfs_suppress_run)
    return FUNC4 (ptid);

  if (FUNC3 (ptid))
    {
      ptid_t lwp;

      lwp = FUNC6 (ptid, -2);

      if (FUNC2 (lwp) == -1)
	FUNC5 (buf, "Thread %ld (defunct)", FUNC1 (ptid));
      else if (FUNC2 (lwp) != -2)
	FUNC5 (buf, "Thread %ld (LWP %ld)", FUNC1 (ptid), FUNC0 (lwp));
      else
	FUNC5 (buf, "Thread %ld        ", FUNC1 (ptid));
    }
  else if (FUNC0 (ptid) != 0)
    FUNC5 (buf, "LWP    %ld        ", FUNC0 (ptid));
  else
    FUNC5 (buf, "process %d    ", FUNC2 (ptid));

  return buf;
}