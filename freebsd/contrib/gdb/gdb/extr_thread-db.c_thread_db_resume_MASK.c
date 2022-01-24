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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_resume ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clear_lwpid_callback ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* target_beneath ; 

__attribute__((used)) static void
FUNC7 (ptid_t ptid, int step, enum target_signal signo)
{
  struct cleanup *old_chain = FUNC5 ();

  if (FUNC0 (ptid) == -1)
    inferior_ptid = FUNC4 (inferior_ptid);
  else if (FUNC2 (ptid))
    ptid = FUNC4 (ptid);

  /* Clear cached data which may not be valid after the resume.  */
  FUNC3 (clear_lwpid_callback, NULL);

  target_beneath->to_resume (ptid, step, signo);

  FUNC1 (old_chain);
}