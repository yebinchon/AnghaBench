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
struct TYPE_2__ {int /*<<< orphan*/  thrid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC6 (int) ; 

__attribute__((used)) static ptid_t
FUNC7 (ptid_t ptid)
{
  struct thread_info *info;
  int lwpid;
  ptid_t tid = ptid;

  if (FUNC1 (ptid))
    goto done;
  if (!(lwpid = FUNC2 (ptid)))
    goto done;
  if (!(info = FUNC6 (lwpid)))
    goto done;
  tid = FUNC3 (FUNC4 (ptid), info->private->thrid);

 done:
  FUNC0((FUNC1 (tid) ? NULL : "lwp_to_thr: no thr for %s", FUNC5 (ptid)));
  return tid;
}