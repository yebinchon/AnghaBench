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
typedef  int /*<<< orphan*/  td_thr_events_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ td_create_bp_addr ; 
 scalar_t__ td_death_bp_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_agent ; 

__attribute__((used)) static void
FUNC3 (void)
{
  td_thr_events_t events;

  /* Set the process wide mask saying we aren't interested in any
     events anymore.  */
  FUNC1 (&events);
  FUNC2 (thread_agent, &events);

  /* Delete thread event breakpoints, if any.  */
  FUNC0 ();
  td_create_bp_addr = 0;
  td_death_bp_addr = 0;
}