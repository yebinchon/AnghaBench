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
struct TYPE_2__ {int /*<<< orphan*/  (* to_mourn_inferior ) () ;} ;

/* Variables and functions */
 TYPE_1__ child_ops ; 
 scalar_t__ fbsd_thread_active ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (fbsd_thread_active)
    FUNC0 ();

  FUNC2 (&fbsd_thread_ops);

  child_ops.to_mourn_inferior ();
}