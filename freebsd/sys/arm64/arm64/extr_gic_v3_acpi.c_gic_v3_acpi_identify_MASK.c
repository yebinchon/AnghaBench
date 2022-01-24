#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
struct madt_table_data {TYPE_2__* dist; int /*<<< orphan*/ * dev; scalar_t__ count; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_7__ {int Length; } ;
struct TYPE_9__ {TYPE_1__ Header; } ;
struct TYPE_8__ {scalar_t__ Version; int /*<<< orphan*/  BaseAddress; } ;
typedef  TYPE_3__ ACPI_TABLE_MADT ;

/* Variables and functions */
 scalar_t__ ACPI_MADT_GIC_VERSION_V3 ; 
 int /*<<< orphan*/  ACPI_SIG_MADT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 scalar_t__ BUS_PASS_INTERRUPT ; 
 scalar_t__ BUS_PASS_ORDER_MIDDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ,struct madt_table_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  madt_handler ; 
 int /*<<< orphan*/  rdist_map ; 

__attribute__((used)) static void
FUNC8(driver_t *driver, device_t parent)
{
	struct madt_table_data madt_data;
	ACPI_TABLE_MADT *madt;
	vm_paddr_t physaddr;
	device_t dev;

	physaddr = FUNC2(ACPI_SIG_MADT);
	if (physaddr == 0)
		return;

	madt = FUNC3(physaddr, ACPI_SIG_MADT);
	if (madt == NULL) {
		FUNC7(parent, "gic: Unable to map the MADT\n");
		return;
	}

	madt_data.parent = parent;
	madt_data.dist = NULL;
	madt_data.count = 0;

	FUNC6(madt + 1, (char *)madt + madt->Header.Length,
	    madt_handler, &madt_data);
	if (madt_data.dist == NULL) {
		FUNC7(parent,
		    "No gic interrupt or distributor table\n");
		goto out;
	}
	/* This is for the wrong GIC version */
	if (madt_data.dist->Version != ACPI_MADT_GIC_VERSION_V3)
		goto out;

	dev = FUNC0(parent, BUS_PASS_INTERRUPT + BUS_PASS_ORDER_MIDDLE,
	    "gic", -1);
	if (dev == NULL) {
		FUNC7(parent, "add gic child failed\n");
		goto out;
	}

	/* Add the MADT data */
	FUNC1(parent, dev, SYS_RES_MEMORY, 0,
	    madt_data.dist->BaseAddress, 128 * 1024);

	madt_data.dev = dev;
	FUNC6(madt + 1, (char *)madt + madt->Header.Length,
	    rdist_map, &madt_data);

	FUNC4(dev, (void *)(uintptr_t)madt_data.dist->Version);

out:
	FUNC5(madt);
}