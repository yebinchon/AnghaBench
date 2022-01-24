#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dtm_count; struct TYPE_5__* dtm_name; } ;
typedef  TYPE_1__ dtrace_meta_t ;
typedef  scalar_t__ dtrace_meta_provider_id_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_meta_lock ; 
 TYPE_1__* dtrace_meta_pid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 int FUNC4 (TYPE_1__*) ; 

int
FUNC5(dtrace_meta_provider_id_t id)
{
	dtrace_meta_t **pp, *old = (dtrace_meta_t *)id;

	FUNC1(&dtrace_meta_lock);
	FUNC1(&dtrace_lock);

	if (old == dtrace_meta_pid) {
		pp = &dtrace_meta_pid;
	} else {
		FUNC3("attempt to unregister non-existent "
		    "dtrace meta-provider %p\n", (void *)old);
	}

	if (old->dtm_count != 0) {
		FUNC2(&dtrace_lock);
		FUNC2(&dtrace_meta_lock);
		return (EBUSY);
	}

	*pp = NULL;

	FUNC2(&dtrace_lock);
	FUNC2(&dtrace_meta_lock);

	FUNC0(old->dtm_name, FUNC4(old->dtm_name) + 1);
	FUNC0(old, sizeof (dtrace_meta_t));

	return (0);
}