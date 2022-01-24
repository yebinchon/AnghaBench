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
 int SC_AUTODETECT_KBD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
#ifdef DEV_SC
	int err;
#endif

	if (!FUNC4(dev))
		return (ENXIO);

	if (!FUNC3(dev, "ti,am33xx-tilcdc"))
		return (ENXIO);

	FUNC2(dev, "AM335x LCD controller");

#ifdef DEV_SC
	err = sc_probe_unit(device_get_unit(dev), 
	    device_get_flags(dev) | SC_AUTODETECT_KBD);
	if (err != 0)
		return (err);
#endif

	return (BUS_PROBE_DEFAULT);
}