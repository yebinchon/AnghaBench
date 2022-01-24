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
struct TYPE_2__ {int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ fbsd_thread_active ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 TYPE_1__ orig_core_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (char *args, int from_tty)
{
  if (fbsd_thread_active)
    FUNC1 ();
  FUNC4 (&fbsd_thread_ops);
  orig_core_ops.to_detach (args, from_tty);
 
  /* Clear gdb solib information and symbol file
     cache, so that after detach and re-attach, new_objfile
     hook will be called */
  FUNC0();
  FUNC3(0);
}