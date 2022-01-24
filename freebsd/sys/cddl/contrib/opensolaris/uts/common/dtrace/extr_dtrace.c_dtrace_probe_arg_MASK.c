#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_3__ {void* dtpr_arg; int /*<<< orphan*/ * dtpr_provider; } ;
typedef  TYPE_1__ dtrace_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *
FUNC3(dtrace_provider_id_t id, dtrace_id_t pid)
{
	dtrace_probe_t *probe;
	void *rval = NULL;

	FUNC1(&dtrace_lock);

	if ((probe = FUNC0(pid)) != NULL &&
	    probe->dtpr_provider == (dtrace_provider_t *)id)
		rval = probe->dtpr_arg;

	FUNC2(&dtrace_lock);

	return (rval);
}