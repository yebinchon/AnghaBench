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
typedef  scalar_t__ uint32_t ;
struct vlapic {int /*<<< orphan*/  callout; int /*<<< orphan*/  timer_period_bt; int /*<<< orphan*/  timer_fire_bt; int /*<<< orphan*/  timer_freq_bt; struct LAPIC* apic_page; } ;
struct LAPIC {scalar_t__ icr_timer; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlapic_callout_handler ; 

void
FUNC8(struct vlapic *vlapic)
{
	struct LAPIC *lapic;
	sbintime_t sbt;
	uint32_t icr_timer;

	FUNC0(vlapic);

	lapic = vlapic->apic_page;
	icr_timer = lapic->icr_timer;

	vlapic->timer_period_bt = vlapic->timer_freq_bt;
	FUNC3(&vlapic->timer_period_bt, icr_timer);

	if (icr_timer != 0) {
		FUNC4(&vlapic->timer_fire_bt);
		FUNC2(&vlapic->timer_fire_bt, &vlapic->timer_period_bt);

		sbt = FUNC5(vlapic->timer_period_bt);
		FUNC6(&vlapic->callout, sbt, 0,
		    vlapic_callout_handler, vlapic, 0);
	} else
		FUNC7(&vlapic->callout);

	FUNC1(vlapic);
}