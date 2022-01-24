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
typedef  int /*<<< orphan*/  dtrace_state_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dta_state; int /*<<< orphan*/ * dta_enabling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dtrace_anon ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/ * dtrace_retained ; 

__attribute__((used)) static dtrace_state_t *
FUNC3(void)
{
	dtrace_state_t *state;

	FUNC0(FUNC1(&dtrace_lock));

	if ((state = dtrace_anon.dta_state) == NULL) {
		FUNC0(dtrace_anon.dta_enabling == NULL);
		return (NULL);
	}

	FUNC0(dtrace_anon.dta_enabling != NULL);
	FUNC0(dtrace_retained != NULL);

	FUNC2(dtrace_anon.dta_enabling);
	dtrace_anon.dta_enabling = NULL;
	dtrace_anon.dta_state = NULL;

	return (state);
}