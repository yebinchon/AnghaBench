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
struct TYPE_2__ {int /*<<< orphan*/  breakpoint_len; int /*<<< orphan*/  breakpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  fbsd_target_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ the_low_target ; 
 scalar_t__ using_threads ; 

void
FUNC4 (void)
{
  using_threads = 0;
  FUNC3 (&fbsd_target_ops);
  FUNC2 (the_low_target.breakpoint,
		       the_low_target.breakpoint_len);
  FUNC1 ();
  FUNC0 ();
}