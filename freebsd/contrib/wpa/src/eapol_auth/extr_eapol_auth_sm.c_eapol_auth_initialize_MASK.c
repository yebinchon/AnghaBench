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
struct eapol_state_machine {void* initializing; void* initialize; } ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  eapol_port_timers_tick ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_state_machine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_state_machine*) ; 

__attribute__((used)) static void FUNC3(struct eapol_state_machine *sm)
{
	sm->initializing = TRUE;
	/* Initialize the state machines by asserting initialize and then
	 * deasserting it after one step */
	sm->initialize = TRUE;
	FUNC0(sm);
	sm->initialize = FALSE;
	FUNC0(sm);
	sm->initializing = FALSE;

	/* Start one second tick for port timers state machine */
	FUNC1(eapol_port_timers_tick, NULL, sm);
	FUNC2(1, 0, eapol_port_timers_tick, NULL, sm);
}