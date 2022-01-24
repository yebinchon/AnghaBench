#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aw_thermal_softc {int throttle; TYPE_2__* levels; int /*<<< orphan*/  min_freq; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int /*<<< orphan*/  freq; } ;
struct TYPE_5__ {TYPE_1__ total_set; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  CPUFREQ_PRIO_USER ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int MAX_CF_LEVELS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct aw_thermal_softc *sc, int enable)
{
	device_t cf_dev;
	int count, error;

	if (enable == sc->throttle)
		return;

	if (enable != 0) {
		/* Set the lowest available frequency */
		cf_dev = FUNC3(FUNC2("cpufreq"), 0);
		if (cf_dev == NULL)
			return;
		count = MAX_CF_LEVELS;
		error = FUNC0(cf_dev, sc->levels, &count);
		if (error != 0 || count == 0)
			return;
		sc->min_freq = sc->levels[count - 1].total_set.freq;
		error = FUNC1(cf_dev, &sc->levels[count - 1],
		    CPUFREQ_PRIO_USER);
		if (error != 0)
			return;
	}

	sc->throttle = enable;
}