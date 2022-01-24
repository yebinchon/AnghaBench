#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct rwlock {int dummy; } ;
typedef  int boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_8__ {int oflags; int flags; TYPE_1__ md; } ;

/* Variables and functions */
 int FALSE ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct rwlock* FUNC2 (TYPE_2__*) ; 
 int VPO_UNMANAGED ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rwlock*) ; 

boolean_t
FUNC6(vm_page_t m)
{
	struct rwlock *lock;
	boolean_t rv;

	if ((m->oflags & VPO_UNMANAGED) != 0)
		return (FALSE);
	lock = FUNC2(m);
	FUNC4(lock);
	rv = !FUNC0(&m->md.pv_list) ||
	    ((m->flags & PG_FICTITIOUS) == 0 &&
	    !FUNC0(&FUNC3(FUNC1(m))->pv_list));
	FUNC5(lock);
	return (rv);
}