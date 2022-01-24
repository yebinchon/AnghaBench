#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct clkdom {int dummy; } ;
struct aw_rtc_softc {TYPE_2__* conf; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {char const* name; } ;
struct TYPE_8__ {int /*<<< orphan*/  freq; TYPE_1__ clkdef; } ;
struct TYPE_7__ {int /*<<< orphan*/  iosc_freq; } ;

/* Variables and functions */
 TYPE_3__ aw_rtc_iosc ; 
 TYPE_3__ aw_rtc_osc32k ; 
 scalar_t__ bootverbose ; 
 struct clkdom* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*) ; 
 scalar_t__ FUNC3 (struct clkdom*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char const***) ; 

__attribute__((used)) static void
FUNC7(struct aw_rtc_softc *sc, device_t dev) {
	struct clkdom *clkdom;
	const char **clknames;
	phandle_t node;
	int nclocks;

	node = FUNC5(dev);
	nclocks = FUNC6(node, "clock-output-names", &clknames);
	/* No clocks to export */
	if (nclocks <= 0)
		return;

	if (nclocks != 3) {
		FUNC4(dev, "Having only %d clocks instead of 3, aborting\n", nclocks);
		return;
	}

	clkdom = FUNC0(dev);

	aw_rtc_osc32k.clkdef.name = clknames[0];
	if (FUNC3(clkdom, &aw_rtc_osc32k) != 0)
		FUNC4(dev, "Cannot register osc32k clock\n");

	aw_rtc_iosc.clkdef.name = clknames[2];
	aw_rtc_iosc.freq = sc->conf->iosc_freq;
	if (FUNC3(clkdom, &aw_rtc_iosc) != 0)
		FUNC4(dev, "Cannot register iosc clock\n");

	FUNC2(clkdom);

	if (bootverbose)
		FUNC1(clkdom);
}