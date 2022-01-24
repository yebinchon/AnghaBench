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
struct TYPE_3__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dtpv_defunct; TYPE_1__ dtpv_pops; } ;
typedef  TYPE_2__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dtrace_lock ; 
 scalar_t__ dtrace_nullop ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(dtrace_provider_id_t id)
{
	dtrace_provider_t *pvp = (dtrace_provider_t *)id;

	FUNC0(pvp->dtpv_pops.dtps_enable !=
	    (void (*)(void *, dtrace_id_t, void *))dtrace_nullop);

	FUNC2(&dtrace_provider_lock);
	FUNC2(&dtrace_lock);

	pvp->dtpv_defunct = FUNC1();

	FUNC3(&dtrace_lock);
	FUNC3(&dtrace_provider_lock);
}