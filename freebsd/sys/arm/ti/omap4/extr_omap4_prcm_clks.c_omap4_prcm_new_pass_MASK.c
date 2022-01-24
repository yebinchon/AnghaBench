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
struct omap4_prcm_softc {int attach_done; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BUS_PASS_ORDER_EARLY ; 
 scalar_t__ BUS_PASS_TIMER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ bus_current_pass ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap4_prcm_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct omap4_prcm_softc *sc = FUNC2(dev);
	unsigned int freq;

	if (sc->attach_done ||
	  bus_current_pass < (BUS_PASS_TIMER + BUS_PASS_ORDER_EARLY)) {
		FUNC1(dev);
		return;
	}
	sc->attach_done = 1;

	/*
	 * In order to determine ARM frequency we need both RPM and CM1 
	 * instances up and running. So wait until all CRM devices are
	 * initialized. Should be replaced with proper clock framework
	 */
	if (FUNC3(dev) == 2) {
		FUNC4(NULL, &freq);
		FUNC0(freq / 2);
	}

	return;
}