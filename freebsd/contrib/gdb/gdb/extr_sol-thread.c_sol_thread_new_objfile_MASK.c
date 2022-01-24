#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ td_err_e ;
struct objfile {int dummy; } ;

/* Variables and functions */
 scalar_t__ TD_NOLIBTHREAD ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  main_ph ; 
 int /*<<< orphan*/  main_ta ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  procfs_suppress_run ; 
 int sol_thread_active ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct objfile *objfile)
{
  td_err_e val;

  if (!objfile)
    {
      sol_thread_active = 0;
      goto quit;
    }

  /* don't do anything if init failed to resolve the libthread_db library */
  if (!procfs_suppress_run)
    goto quit;

  /* Now, initialize the thread debugging library.  This needs to be done after
     the shared libraries are located because it needs information from the
     user's thread library.  */

  val = FUNC0 ();
  if (val != TD_OK)
    {
      FUNC4 ("sol_thread_new_objfile: td_init: %s", FUNC3 (val));
      goto quit;
    }

  val = FUNC1 (&main_ph, &main_ta);
  if (val == TD_NOLIBTHREAD)
    goto quit;
  else if (val != TD_OK)
    {
      FUNC4 ("sol_thread_new_objfile: td_ta_new: %s", FUNC3 (val));
      goto quit;
    }

  sol_thread_active = 1;
quit:
  /* Call predecessor on chain, if any. */
  if (&target_new_objfile_chain)
    FUNC2 (objfile);
}