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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  prgregset_t ;
typedef  int /*<<< orphan*/  prfpregset_t ;
typedef  int /*<<< orphan*/  gdb_gregset_t ;
typedef  int /*<<< orphan*/  gdb_fpregset_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_store_registers ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ TD_NOXREGS ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_ta ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC17 (int regno)
{
  thread_t thread;
  td_thrhandle_t thandle;
  td_err_e val;
  prgregset_t  gregset;
  prfpregset_t fpregset;
#if 0
  int xregsize;
  caddr_t xregset;
#endif

  if (!FUNC5 (inferior_ptid))
    {				/* LWP: pass the request on to procfs.c */
      procfs_ops.to_store_registers (regno);
      return;
    }

  /* Solaris thread: convert inferior_ptid into a td_thrhandle_t */

  thread = FUNC0 (inferior_ptid);

  val = FUNC6 (main_ta, thread, &thandle);
  if (val != TD_OK)
    FUNC2 ("sol_thread_store_registers: td_ta_map_id2thr %s",
	   FUNC14 (val));

  if (regno != -1)
    {				/* Not writing all the regs */
      char old_value[MAX_REGISTER_SIZE];

      /* Save new register value.  */
      FUNC11 (regno, old_value);

      val = FUNC8 (&thandle, gregset);
      if (val != TD_OK)
	FUNC2 ("sol_thread_store_registers: td_thr_getgregs %s",
	       FUNC14 (val));
      val = FUNC7 (&thandle, &fpregset);
      if (val != TD_OK)
	FUNC2 ("sol_thread_store_registers: td_thr_getfpregs %s",
	       FUNC14 (val));

      /* Restore new register value.  */
      FUNC13 (regno, old_value);

#if 0
/* thread_db doesn't seem to handle this right */
      val = td_thr_getxregsize (&thandle, &xregsize);
      if (val != TD_OK && val != TD_NOXREGS)
	error ("sol_thread_store_registers: td_thr_getxregsize %s",
	       td_err_string (val));

      if (val == TD_OK)
	{
	  xregset = alloca (xregsize);
	  val = td_thr_getxregs (&thandle, xregset);
	  if (val != TD_OK)
	    error ("sol_thread_store_registers: td_thr_getxregs %s",
		   td_err_string (val));
	}
#endif
    }

  FUNC4  ((gdb_gregset_t *)  &gregset,  regno);
  FUNC3 ((gdb_fpregset_t *) &fpregset, regno);

  val = FUNC10 (&thandle, gregset);
  if (val != TD_OK)
    FUNC2 ("sol_thread_store_registers: td_thr_setgregs %s",
	   FUNC14 (val));
  val = FUNC9 (&thandle, &fpregset);
  if (val != TD_OK)
    FUNC2 ("sol_thread_store_registers: td_thr_setfpregs %s",
	   FUNC14 (val));

#if 0
/* thread_db doesn't seem to handle this right */
  val = td_thr_getxregsize (&thandle, &xregsize);
  if (val != TD_OK && val != TD_NOXREGS)
    error ("sol_thread_store_registers: td_thr_getxregsize %s",
	   td_err_string (val));

  /* Should probably do something about writing the xregs here, but what are
     they? */
#endif
}