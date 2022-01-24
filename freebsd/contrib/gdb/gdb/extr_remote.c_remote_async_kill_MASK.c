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
typedef  int /*<<< orphan*/  catch_errors_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kill_kludge ; 
 scalar_t__ putpkt ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (void)
{
  /* Unregister the file descriptor from the event loop. */
  if (FUNC2 ())
    FUNC1 (remote_desc, NULL, 0);

  /* For some mysterious reason, wait_for_inferior calls kill instead of
     mourn after it gets TARGET_WAITKIND_SIGNALLED.  Work around it.  */
  if (kill_kludge)
    {
      kill_kludge = 0;
      FUNC3 ();
      return;
    }

  /* Use catch_errors so the user can quit from gdb even when we aren't on
     speaking terms with the remote system.  */
  FUNC0 ((catch_errors_ftype *) putpkt, "k", "", RETURN_MASK_ERROR);

  /* Don't wait for it to die.  I'm not really sure it matters whether
     we do or not.  For the existing stubs, kill is a noop.  */
  FUNC3 ();
}