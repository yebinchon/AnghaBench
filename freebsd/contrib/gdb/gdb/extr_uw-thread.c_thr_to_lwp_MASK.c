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
struct thread_info {TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_2__ {int /*<<< orphan*/  lwpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  pid ; 

__attribute__((used)) static ptid_t
FUNC6 (ptid_t ptid)
{
  struct thread_info *info;
  ptid_t lid;

  if (!FUNC1 (ptid))
    lid = ptid;
  else if (!(info = FUNC5 (ptid)))
    lid = null_ptid;
  else if (!info->private->lwpid)
    lid = null_ptid;
  else
    lid = FUNC2 (FUNC3 (ptid), info->private->lwpid);

  FUNC0(("  thr_to_lwp(%s) = %s", FUNC4 (pid), FUNC4 (lid)));
  return lid;
}