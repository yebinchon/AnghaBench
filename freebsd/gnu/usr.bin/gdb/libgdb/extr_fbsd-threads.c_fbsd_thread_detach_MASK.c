#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;
struct TYPE_3__ {scalar_t__ pid; } ;

/* Variables and functions */
 TYPE_2__ child_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 TYPE_1__ proc_handle ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (char *args, int from_tty)
{
  FUNC1 ();
  FUNC4 (&fbsd_thread_ops);

  /* Clear gdb solib information and symbol file
     cache, so that after detach and re-attach, new_objfile
     hook will be called */

  FUNC0();
  FUNC3(0);
  proc_handle.pid = 0;
  child_ops.to_detach (args, from_tty);
}