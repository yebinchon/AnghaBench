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
struct TYPE_3__ {int /*<<< orphan*/  (* to_create_inferior ) (char*,char*,char**) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ main_ph ; 
 int /*<<< orphan*/  null_ptid ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ sol_thread_active ; 
 int /*<<< orphan*/  sol_thread_ops ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char**) ; 

__attribute__((used)) static void
FUNC7 (char *exec_file, char *allargs, char **env)
{
  procfs_ops.to_create_inferior (exec_file, allargs, env);

  if (sol_thread_active && !FUNC4 (inferior_ptid, null_ptid))
    {
      main_ph.ptid = inferior_ptid;	/* Save for xfer_memory */

      FUNC5 (&sol_thread_ops);

      inferior_ptid = FUNC3 (inferior_ptid);
      if (FUNC0 (inferior_ptid) == -1)
	inferior_ptid = main_ph.ptid;

      if (!FUNC2 (inferior_ptid))
	FUNC1 (inferior_ptid);
    }
}