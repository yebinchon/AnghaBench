#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_6__ {int lwp_id; } ;
struct TYPE_5__ {int thr_tid; int /*<<< orphan*/  thr_lwpp; } ;
struct TYPE_7__ {int /*<<< orphan*/  mapp; TYPE_2__ lwp; TYPE_1__ map; } ;
typedef  TYPE_3__ iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 

__attribute__((used)) static int
FUNC4 (iter_t *iter, void *data)
{
  int thrid = iter->map.thr_tid;
  int lwpid = !iter->map.thr_lwpp ? 0 : iter->lwp.lwp_id;
  ptid_t ptid = FUNC0 (FUNC1 (inferior_ptid), thrid);

  if (!FUNC3 (ptid) && (!data || thrid == 1))
    FUNC2 (thrid, lwpid, iter->mapp, ptid);

  return 0;
}