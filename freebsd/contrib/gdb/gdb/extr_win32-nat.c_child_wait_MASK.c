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
struct target_waitstatus {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,struct target_waitstatus*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC5 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int pid = FUNC0 (ptid);

  /* We loop when we get a non-standard exception rather than return
     with a SPURIOUS because resume can try and step or modify things,
     which needs a current_thread->h.  But some of these exceptions mark
     the birth or death of threads, which mean that the current thread
     isn't necessarily what you think it is. */

  while (1)
    {
      int retval = FUNC2 (pid, ourstatus);
      if (retval)
	return FUNC3 (retval);
      else
	{
	  int detach = 0;

	  if (&ui_loop_hook != NULL)
	    detach = FUNC4 (0);

	  if (detach)
	    FUNC1 ();
	}
    }
}