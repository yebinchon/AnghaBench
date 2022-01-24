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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
#define  MV_DEV_88F6282 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	uint32_t d, r;

	if (!FUNC3(dev))
		return (ENXIO);

	if (!FUNC2(dev, "mrvl,ts"))
		return (ENXIO);
	FUNC4(&d, &r);
	switch (d) {
	case MV_DEV_88F6282:
		break;
	default:
		FUNC0(dev, "unsupported SoC (ID: 0x%08X)!\n", d);
		return (ENXIO);
	}
	FUNC1(dev, "Marvell Thermal Sensor");

	return (0);
}