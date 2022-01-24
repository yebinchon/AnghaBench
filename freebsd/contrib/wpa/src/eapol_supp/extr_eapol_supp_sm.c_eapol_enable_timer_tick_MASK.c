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
struct eapol_sm {int timer_tick_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  eapol_port_timers_tick ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct eapol_sm *sm)
{
	if (sm->timer_tick_enabled)
		return;
	FUNC2(MSG_DEBUG, "EAPOL: enable timer tick");
	FUNC0(eapol_port_timers_tick, NULL, sm);
	if (FUNC1(1, 0, eapol_port_timers_tick, NULL, sm) == 0)
		sm->timer_tick_enabled = 1;
}