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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_4__ {int /*<<< orphan*/  ptid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* to_resume ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ info_verbose ; 
 TYPE_2__ main_ph ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ procfs_ops ; 
 struct cleanup* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (ptid_t ptid, int step, enum target_signal signo)
{
  struct cleanup *old_chain;

  old_chain = FUNC5 ();

  inferior_ptid = FUNC7 (inferior_ptid, FUNC1 (main_ph.ptid));
  if (FUNC1 (inferior_ptid) == -1)
    inferior_ptid = FUNC4 ();

  if (FUNC1 (ptid) != -1)
    {
      ptid_t save_ptid = ptid;

      ptid = FUNC7 (ptid, -2);
      if (FUNC1 (ptid) == -2)		/* Inactive thread */
	FUNC3 ("This version of Solaris can't start inactive threads.");
      if (info_verbose && FUNC1 (ptid) == -1)
	FUNC8 ("Specified thread %ld seems to have terminated",
		 FUNC0 (save_ptid));
    }

  procfs_ops.to_resume (ptid, step, signo);

  FUNC2 (old_chain);
}