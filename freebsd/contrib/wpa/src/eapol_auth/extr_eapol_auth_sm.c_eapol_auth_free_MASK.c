#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct eapol_state_machine {struct eapol_state_machine* identity; int /*<<< orphan*/  radius_cui; scalar_t__ eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  eapol_port_timers_tick ; 
 int /*<<< orphan*/  eapol_sm_step_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct eapol_state_machine*,struct eapol_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (struct eapol_state_machine*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct eapol_state_machine *sm)
{
	if (sm == NULL)
		return;

	FUNC1(eapol_port_timers_tick, NULL, sm);
	FUNC1(eapol_sm_step_cb, sm, NULL);
	if (sm->eap)
		FUNC0(sm->eap);

	FUNC3(sm->radius_cui);
	FUNC2(sm->identity);
	FUNC2(sm);
}