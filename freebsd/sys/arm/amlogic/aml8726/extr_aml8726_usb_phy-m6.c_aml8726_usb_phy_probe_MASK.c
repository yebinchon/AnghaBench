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
#define  AML_SOC_HW_REV_M8 129 
#define  AML_SOC_HW_REV_M8B 128 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int aml8726_soc_hw_rev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (!FUNC2(dev))
		return (ENXIO);

	if (!FUNC1(dev, "amlogic,aml8726-m6-usb-phy") &&
	    !FUNC1(dev, "amlogic,aml8726-m8-usb-phy"))
		return (ENXIO);

	switch (aml8726_soc_hw_rev) {
	case AML_SOC_HW_REV_M8:
	case AML_SOC_HW_REV_M8B:
		FUNC0(dev, "Amlogic aml8726-m8 USB PHY");
		break;
	default:
		FUNC0(dev, "Amlogic aml8726-m6 USB PHY");
		break;
	}

	return (BUS_PROBE_DEFAULT);
}