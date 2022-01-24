#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_4__ {int oflags; int flags; int /*<<< orphan*/  md; } ;

/* Variables and functions */
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(vm_page_t m)
{
	int count;

	count = 0;
	if ((m->oflags & VPO_UNMANAGED) != 0)
		return (count);
	FUNC3(&pvh_global_lock);
	count = FUNC2(&m->md, count);
	if ((m->flags & PG_FICTITIOUS) == 0) {
		count = FUNC2(FUNC1(FUNC0(m)),
		    count);
	}
	FUNC4(&pvh_global_lock);
	return (count);
}