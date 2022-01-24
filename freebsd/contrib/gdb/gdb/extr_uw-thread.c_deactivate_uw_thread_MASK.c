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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ uw_thread_active ; 
 int /*<<< orphan*/  uw_thread_ops ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ();
  uw_thread_active = 0;
  FUNC1 (&uw_thread_ops);
}