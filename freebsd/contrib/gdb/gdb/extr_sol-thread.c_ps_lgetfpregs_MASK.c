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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  int /*<<< orphan*/  prfpregset_t ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  gdb_ps_prochandle_t ;
typedef  int /*<<< orphan*/  gdb_fpregset_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_fetch_registers ) (int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_fetch_registers ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_2__ orig_core_ops ; 
 TYPE_1__ procfs_ops ; 
 struct cleanup* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ target_has_execution ; 

ps_err_e
FUNC7 (gdb_ps_prochandle_t ph, lwpid_t lwpid,
	       prfpregset_t * fpregset)
{
  struct cleanup *old_chain;

  old_chain = FUNC4 ();

  inferior_ptid = FUNC0 (lwpid, FUNC1 (inferior_ptid));

  if (target_has_execution)
    procfs_ops.to_fetch_registers (-1);
  else
    orig_core_ops.to_fetch_registers (-1);
  FUNC3 ((gdb_fpregset_t *) fpregset, -1);

  FUNC2 (old_chain);

  return PS_OK;
}