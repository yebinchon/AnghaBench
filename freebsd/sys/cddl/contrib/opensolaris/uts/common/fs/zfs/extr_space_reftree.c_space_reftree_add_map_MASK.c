#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_1__ range_tree_t ;
struct TYPE_8__ {int /*<<< orphan*/  rs_end; int /*<<< orphan*/  rs_start; } ;
typedef  TYPE_2__ range_seg_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(avl_tree_t *t, range_tree_t *rt, int64_t refcnt)
{
	range_seg_t *rs;

	for (rs = FUNC1(&rt->rt_root); rs; rs = FUNC0(&rt->rt_root, rs))
		FUNC2(t, rs->rs_start, rs->rs_end, refcnt);
}