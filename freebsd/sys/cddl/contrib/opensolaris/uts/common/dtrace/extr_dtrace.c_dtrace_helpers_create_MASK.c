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
struct TYPE_5__ {TYPE_2__* p_dtrace_helpers; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_6__ {void* dthps_actions; } ;
typedef  TYPE_2__ dtrace_helpers_t ;
typedef  int /*<<< orphan*/  dtrace_helper_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DTRACE_NHELPER_ACTIONS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_helpers ; 
 int /*<<< orphan*/  dtrace_lock ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dtrace_helpers_t *
FUNC3(proc_t *p)
{
	dtrace_helpers_t *help;

	FUNC0(FUNC1(&dtrace_lock));
	FUNC0(p->p_dtrace_helpers == NULL);

	help = FUNC2(sizeof (dtrace_helpers_t), KM_SLEEP);
	help->dthps_actions = FUNC2(sizeof (dtrace_helper_action_t *) *
	    DTRACE_NHELPER_ACTIONS, KM_SLEEP);

	p->p_dtrace_helpers = help;
	dtrace_helpers++;

	return (help);
}