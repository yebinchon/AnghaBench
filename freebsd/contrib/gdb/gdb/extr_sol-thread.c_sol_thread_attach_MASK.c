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
struct target_ops {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ptid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_attach ) (char*,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct target_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ main_ph ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ sol_thread_active ; 
 int /*<<< orphan*/  sol_thread_ops ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  procfs_ops.to_attach (args, from_tty);

  /* Must get symbols from solibs before libthread_db can run! */
  FUNC1 ((char *) 0, from_tty, (struct target_ops *) 0, auto_solib_add);

  if (sol_thread_active)
    {
      FUNC4 ("sol-thread active.\n");
      main_ph.ptid = inferior_ptid;		/* Save for xfer_memory */
      FUNC5 (&sol_thread_ops);
      inferior_ptid = FUNC3 (inferior_ptid);
      if (FUNC0 (inferior_ptid) == -1)
	inferior_ptid = main_ph.ptid;
      else
	FUNC2 (inferior_ptid);
    }
  /* XXX - might want to iterate over all the threads and register them. */
}