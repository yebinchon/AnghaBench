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
typedef  scalar_t__ u_int ;
struct a10_timer_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 scalar_t__ ALLWINNERSOC_SUN4I ; 
 scalar_t__ ALLWINNERSOC_SUN5I ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  compat_data ; 
 struct a10_timer_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct a10_timer_softc *sc;
#if defined(__arm__)
	u_int soc_family;
#endif

	sc = FUNC1(dev);

	if (FUNC3(dev, compat_data)->ocd_data == 0)
		return (ENXIO);

#if defined(__arm__)
	/* For SoC >= A10 we have the ARM Timecounter/Eventtimer */
	soc_family = allwinner_soc_family();
	if (soc_family != ALLWINNERSOC_SUN4I &&
	    soc_family != ALLWINNERSOC_SUN5I)
		return (ENXIO);
#endif

	FUNC2(dev, "Allwinner timer");
	return (BUS_PROBE_DEFAULT);
}