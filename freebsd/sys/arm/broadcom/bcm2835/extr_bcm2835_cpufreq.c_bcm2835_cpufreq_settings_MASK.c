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
struct cf_setting {int dummy; } ;
struct bcm2835_cpufreq_softc {scalar_t__ arm_min_freq; scalar_t__ arm_max_freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cf_setting*,int*) ; 
 struct bcm2835_cpufreq_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_setting*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct cf_setting *sets, int *count)
{
	struct bcm2835_cpufreq_softc *sc;

	if (sets == NULL || count == NULL)
		return (EINVAL);

	sc = FUNC1(dev);
	if (sc->arm_min_freq < 0 || sc->arm_max_freq < 0) {
		FUNC3("device is not configured\n");
		return (EINVAL);
	}

	/* fill data with unknown value */
	FUNC2(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * (*count));
	/* create new array up to count */
	FUNC0(dev, sets, count);

	return (0);
}