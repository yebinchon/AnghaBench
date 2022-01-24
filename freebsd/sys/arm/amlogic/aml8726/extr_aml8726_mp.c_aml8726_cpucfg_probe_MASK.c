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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__* cpucfg_compatible ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	int i;

	for (i = 0; cpucfg_compatible[i]; i++)
		if (FUNC1(dev, cpucfg_compatible[i]))
			break;

	if (!cpucfg_compatible[i])
		return (ENXIO);

	FUNC0(dev, "Amlogic CPU Config");

	return (BUS_PROBE_DEFAULT);
}