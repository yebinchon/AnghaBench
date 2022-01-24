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
struct advertisement_state_machine {scalar_t__ state; int /*<<< orphan*/  type; } ;
struct upnp_wps_device_sm {struct advertisement_state_machine advertisement; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISE_DOWN ; 
 int /*<<< orphan*/  advertisement_state_machine_handler ; 
 int /*<<< orphan*/  FUNC0 (struct upnp_wps_device_sm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct upnp_wps_device_sm*) ; 
 int FUNC2 () ; 

int FUNC3(struct upnp_wps_device_sm *sm)
{
	struct advertisement_state_machine *a = &sm->advertisement;
	int next_timeout_msec;

	FUNC0(sm, 0);

	/*
	 * Start out advertising down, this automatically switches
	 * to advertising up which signals our restart.
	 */
	a->type = ADVERTISE_DOWN;
	a->state = 0;
	/* (other fields not used here) */

	/* First timeout should be random interval < 100 msec */
	next_timeout_msec = (100 * (FUNC2() & 0xFF)) >> 8;
	return FUNC1(0, next_timeout_msec,
				      advertisement_state_machine_handler,
				      NULL, sm);
}