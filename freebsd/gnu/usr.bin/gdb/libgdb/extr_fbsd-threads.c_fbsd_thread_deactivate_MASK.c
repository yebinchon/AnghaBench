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
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ fbsd_thread_active ; 
 scalar_t__ fbsd_thread_core ; 
 scalar_t__ fbsd_thread_present ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ proc_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_agent ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (fbsd_thread_core == 0)
    FUNC0();
  FUNC3 (thread_agent);

  inferior_ptid = FUNC2 (proc_handle.pid);
  proc_handle.pid = 0;
  fbsd_thread_active = 0;
  fbsd_thread_present = 0;
  FUNC1 ();
}