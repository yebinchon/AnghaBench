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
 int /*<<< orphan*/  CLEAR_DEFERRED_STORES ; 
 scalar_t__ attach_flag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  inf_exited ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6 (void)
{
  extern int show_breakpoint_hit_counts;

  inferior_ptid = null_ptid;
  attach_flag = 0;
  FUNC1 (inf_exited);
  FUNC3 ();

#ifdef CLEAR_DEFERRED_STORES
  /* Delete any pending stores to the inferior... */
  CLEAR_DEFERRED_STORES;
#endif

  FUNC5 ();
  FUNC4 ();

  /* It is confusing to the user for ignore counts to stick around
     from previous runs of the inferior.  So clear them.  */
  /* However, it is more confusing for the ignore counts to disappear when
     using hit counts.  So don't clear them if we're counting hits.  */
  if (!show_breakpoint_hit_counts)
    FUNC0 ();

  if (&detach_hook)
    FUNC2 ();
}