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
struct gic_acpi_devinfo {int /*<<< orphan*/  rl; } ;
struct arm_gic_softc {int /*<<< orphan*/ * gic_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_5__ {scalar_t__ BaseAddress; int /*<<< orphan*/  SpiBase; int /*<<< orphan*/  SpiCount; int /*<<< orphan*/  Flags; int /*<<< orphan*/  MsiFrameId; } ;
struct TYPE_4__ {scalar_t__ Type; } ;
typedef  TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef  TYPE_2__ ACPI_MADT_GENERIC_MSI_FRAME ;

/* Variables and functions */
 scalar_t__ ACPI_MADT_TYPE_GENERIC_MSI_FRAME ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gic_acpi_devinfo*) ; 
 struct gic_acpi_devinfo* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
	struct arm_gic_softc *sc;
	ACPI_MADT_GENERIC_MSI_FRAME *msi;
	struct gic_acpi_devinfo *dinfo;
	device_t dev, cdev;

	if (entry->Type == ACPI_MADT_TYPE_GENERIC_MSI_FRAME) {
		sc = arg;
		dev = sc->gic_dev;
		msi = (ACPI_MADT_GENERIC_MSI_FRAME *)entry;

		FUNC1(dev, "frame: %x %lx %x %u %u\n", msi->MsiFrameId,
		    msi->BaseAddress, msi->Flags, msi->SpiCount, msi->SpiBase);

		cdev = FUNC0(dev, NULL, -1);
		if (cdev == NULL)
			return;

		dinfo = FUNC3(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
		FUNC5(&dinfo->rl);
		FUNC4(&dinfo->rl, SYS_RES_MEMORY, 0,
		    msi->BaseAddress, msi->BaseAddress + PAGE_SIZE - 1,
		    PAGE_SIZE);
		FUNC2(cdev, dinfo);
	}
}