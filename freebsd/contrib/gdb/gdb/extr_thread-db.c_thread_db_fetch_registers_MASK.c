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
typedef  scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef  scalar_t__ prgregset_t ;
typedef  int /*<<< orphan*/  gdb_prfpregset_t ;
typedef  int /*<<< orphan*/  gdb_gregset_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_fetch_registers ) (int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  th; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,long,char*) ; 
 struct thread_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* target_beneath ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct thread_info*,int) ; 

__attribute__((used)) static void
FUNC11 (int regno)
{
  struct thread_info *thread_info;
  prgregset_t gregset;
  gdb_prfpregset_t fpregset;
  td_err_e err;

  if (!FUNC3 (inferior_ptid))
    {
      /* Pass the request to the target beneath us.  */
      target_beneath->to_fetch_registers (regno);
      return;
    }

  thread_info = FUNC2 (inferior_ptid);
  FUNC10 (thread_info, 1);

  err = FUNC8 (&thread_info->private->th, gregset);
  if (err != TD_OK)
    FUNC1 ("Cannot fetch general-purpose registers for thread %ld: %s",
	   (long) FUNC0 (inferior_ptid), FUNC9 (err));

  err = FUNC7 (&thread_info->private->th, &fpregset);
  if (err != TD_OK)
    FUNC1 ("Cannot get floating-point registers for thread %ld: %s",
	   (long) FUNC0 (inferior_ptid), FUNC9 (err));

  /* Note that we must call supply_gregset after calling the thread_db
     routines because the thread_db routines call ps_lgetgregs and
     friends which clobber GDB's register cache.  */
  FUNC6 ((gdb_gregset_t *) gregset);
  FUNC5 (&fpregset);
}