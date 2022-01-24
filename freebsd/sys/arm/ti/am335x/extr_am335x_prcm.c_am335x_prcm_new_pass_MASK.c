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
struct am335x_prcm_softc {int attach_done; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BUS_PASS_ORDER_EARLY ; 
 scalar_t__ BUS_PASS_TIMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ bus_current_pass ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct am335x_prcm_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct am335x_prcm_softc *sc = FUNC4(dev);
	unsigned int sysclk, fclk;

	sc = FUNC4(dev);
	if (sc->attach_done ||
	    bus_current_pass < (BUS_PASS_TIMER + BUS_PASS_ORDER_EARLY)) {
		FUNC2(dev);
		return;
	}

	sc->attach_done = 1;

	if (FUNC1(NULL, &sysclk) != 0)
		sysclk = 0;
	if (FUNC0(NULL, &fclk) != 0)
		fclk = 0;
	if (sysclk && fclk)
		FUNC5(dev, "Clocks: System %u.%01u MHz, CPU %u MHz\n",
		    sysclk/1000000, (sysclk % 1000000)/100000, fclk/1000000);
	else {
		FUNC5(dev, "can't read frequencies yet (SCM device not ready?)\n");
		goto fail;
	}

	return;

fail:
	FUNC3(dev);
	return;
}