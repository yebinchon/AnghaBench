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
struct TYPE_4__ {int /*<<< orphan*/  ptid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_2__ main_ph ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  sol_thread_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  inferior_ptid = FUNC1 (FUNC0 (main_ph.ptid));
  FUNC3 (&sol_thread_ops);
  procfs_ops.to_detach (args, from_tty);
}