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
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
#define  CM1_INSTANCE 130 
#define  CM2_INSTANCE 129 
 int ENXIO ; 
#define  PRM_INSTANCE 128 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ofw_compat_data* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const struct ofw_compat_data *ocd;

	if (!FUNC3(dev))
		return (ENXIO);

	ocd = FUNC2(dev, compat_data);
	if ((int)ocd->ocd_data == 0)
		return (ENXIO);

	switch ((int)ocd->ocd_data) {
		case PRM_INSTANCE:
			FUNC1(dev, "TI OMAP Power, Reset and Clock Management (PRM)");
			break;
		case CM1_INSTANCE:
			FUNC1(dev, "TI OMAP Power, Reset and Clock Management (C1)");
			break;
		case CM2_INSTANCE:
			FUNC1(dev, "TI OMAP Power, Reset and Clock Management (C2)");
			break;
		default:
			FUNC0(dev, "unknown instance type: %d\n", (int)ocd->ocd_data);
			return (ENXIO);
	}

	return (BUS_PROBE_DEFAULT);
}