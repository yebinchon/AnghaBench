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
#define  ACPI_MADT_GIC_VERSION_NONE 130 
#define  ACPI_MADT_GIC_VERSION_V1 129 
#define  ACPI_MADT_GIC_VERSION_V2 128 
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{

	switch((uintptr_t)FUNC0(dev)) {
	case ACPI_MADT_GIC_VERSION_NONE:
	case ACPI_MADT_GIC_VERSION_V1:
	case ACPI_MADT_GIC_VERSION_V2:
		break;
	default:
		return (ENXIO);
	}

	FUNC1(dev, "ARM Generic Interrupt Controller");
	return (BUS_PROBE_NOWILDCARD);
}