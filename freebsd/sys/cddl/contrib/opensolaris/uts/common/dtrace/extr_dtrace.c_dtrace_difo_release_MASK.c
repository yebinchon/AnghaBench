#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_5__ {scalar_t__ dtdv_id; } ;
typedef  TYPE_1__ dtrace_difv_t ;
struct TYPE_6__ {scalar_t__ dtdo_refcnt; int dtdo_varlen; TYPE_1__* dtdo_vartab; } ;
typedef  TYPE_2__ dtrace_difo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIF_VAR_VTIMESTAMP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ dtrace_vtime_references ; 

__attribute__((used)) static void
FUNC4(dtrace_difo_t *dp, dtrace_vstate_t *vstate)
{
	int i;

	FUNC0(FUNC1(&dtrace_lock));
	FUNC0(dp->dtdo_refcnt != 0);

	for (i = 0; i < dp->dtdo_varlen; i++) {
		dtrace_difv_t *v = &dp->dtdo_vartab[i];

		if (v->dtdv_id != DIF_VAR_VTIMESTAMP)
			continue;

		FUNC0(dtrace_vtime_references > 0);
		if (--dtrace_vtime_references == 0)
			FUNC3();
	}

	if (--dp->dtdo_refcnt == 0)
		FUNC2(dp, vstate);
}