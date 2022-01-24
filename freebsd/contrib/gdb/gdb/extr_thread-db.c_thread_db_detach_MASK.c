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
struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ proc_handle ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__* target_beneath ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  FUNC0 ();

  /* There's no need to save & restore inferior_ptid here, since the
     inferior is supposed to be survive this function call.  */
  inferior_ptid = FUNC1 (inferior_ptid);

  /* Forget about the child's process ID.  We shouldn't need it
     anymore.  */
  proc_handle.pid = 0;

  target_beneath->to_detach (args, from_tty);
}