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
struct target_waitstatus {scalar_t__ kind; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ptid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_wait ) (int /*<<< orphan*/ ,struct target_waitstatus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_WAITKIND_EXITED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ info_verbose ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ main_ph ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct target_waitstatus*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC16 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  ptid_t rtnval;
  ptid_t save_ptid;
  struct cleanup *old_chain;

  save_ptid = inferior_ptid;
  old_chain = FUNC11 ();

  inferior_ptid = FUNC14 (inferior_ptid, FUNC1 (main_ph.ptid));
  if (FUNC1 (inferior_ptid) == -1)
    inferior_ptid = FUNC9 ();

  if (FUNC1 (ptid) != -1)
    {
      ptid_t save_ptid = ptid;

      ptid = FUNC14 (ptid, -2);
      if (FUNC1 (ptid) == -2)		/* Inactive thread */
	FUNC4 ("This version of Solaris can't start inactive threads.");
      if (info_verbose && FUNC1 (ptid) == -1)
	FUNC15 ("Specified thread %ld seems to have terminated",
		 FUNC0 (save_ptid));
    }

  rtnval = procfs_ops.to_wait (ptid, ourstatus);

  if (ourstatus->kind != TARGET_WAITKIND_EXITED)
    {
      /* Map the LWP of interest back to the appropriate thread ID */
      rtnval = FUNC7 (rtnval);
      if (FUNC1 (rtnval) == -1)
	rtnval = save_ptid;

      /* See if we have a new thread */
      if (FUNC6 (rtnval)
	  && !FUNC10 (rtnval, save_ptid)
	  && !FUNC5 (rtnval))
	{
	  FUNC8 ("[New %s]\n", FUNC13 (rtnval));
	  FUNC2 (rtnval);
	}
    }

  /* During process initialization, we may get here without the thread package
     being initialized, since that can only happen after we've found the shared
     libs.  */

  FUNC3 (old_chain);

  return rtnval;
}