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
struct qt_args {int /*<<< orphan*/  from_tty; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 scalar_t__ attach_flag ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ history_filename ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ write_history_p ; 

__attribute__((used)) static int
FUNC6 (void *arg)
{
  struct qt_args *qt = (struct qt_args *)arg;

  if (! FUNC1 (inferior_ptid, null_ptid) && target_has_execution)
    {
      if (attach_flag)
        FUNC3 (qt->args, qt->from_tty);
      else
        FUNC4 ();
    }

  /* UDI wants this, to kill the TIP.  */
  FUNC2 (&current_target, 1);

  /* Save the history information if it is appropriate to do so.  */
  if (write_history_p && history_filename)
    FUNC5 (history_filename);

  FUNC0 (ALL_CLEANUPS);	/* Do any final cleanups before exiting */

  return 0;
}