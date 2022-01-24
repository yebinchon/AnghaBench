#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* sig; int /*<<< orphan*/  integer; } ;
struct target_waitstatus {TYPE_1__ value; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct target_waitstatus*,int) ; 
 int /*<<< orphan*/  TARGET_WAITKIND_EXITED ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SIGNALLED ; 
 int /*<<< orphan*/  TARGET_WAITKIND_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (struct target_waitstatus *ourstatus, int hoststatus)
{
#ifdef CHILD_SPECIAL_WAITSTATUS
  /* CHILD_SPECIAL_WAITSTATUS should return nonzero and set *OURSTATUS
     if it wants to deal with hoststatus.  */
  if (CHILD_SPECIAL_WAITSTATUS (ourstatus, hoststatus))
    return;
#endif

  if (FUNC2 (hoststatus))
    {
      ourstatus->kind = TARGET_WAITKIND_EXITED;
      ourstatus->value.integer = FUNC1 (hoststatus);
    }
  else if (!FUNC3 (hoststatus))
    {
      ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
      ourstatus->value.sig = FUNC6 (FUNC5 (hoststatus));
    }
  else
    {
      ourstatus->kind = TARGET_WAITKIND_STOPPED;
      ourstatus->value.sig = FUNC6 (FUNC4 (hoststatus));
    }
}