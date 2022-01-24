#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
struct madt_table_data {TYPE_2__* dist; TYPE_4__** intr; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/  madt_data ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_11__ {scalar_t__ BaseAddress; } ;
struct TYPE_8__ {int Length; } ;
struct TYPE_10__ {TYPE_1__ Header; } ;
struct TYPE_9__ {int Version; scalar_t__ BaseAddress; } ;
typedef  TYPE_3__ ACPI_TABLE_MADT ;
typedef  TYPE_4__ ACPI_MADT_GENERIC_INTERRUPT ;

/* Variables and functions */
#define  ACPI_MADT_GIC_VERSION_NONE 130 
#define  ACPI_MADT_GIC_VERSION_V1 129 
#define  ACPI_MADT_GIC_VERSION_V2 128 
 int /*<<< orphan*/  ACPI_SIG_MADT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 scalar_t__ BUS_PASS_INTERRUPT ; 
 scalar_t__ BUS_PASS_ORDER_MIDDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ,struct madt_table_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct madt_table_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  madt_handler ; 

__attribute__((used)) static void
FUNC9(driver_t *driver, device_t parent)
{
	struct madt_table_data madt_data;
	ACPI_MADT_GENERIC_INTERRUPT *intr;
	ACPI_TABLE_MADT *madt;
	vm_paddr_t physaddr;
	device_t dev;
	int i;

	physaddr = FUNC2(ACPI_SIG_MADT);
	if (physaddr == 0)
		return;

	madt = FUNC3(physaddr, ACPI_SIG_MADT);
	if (madt == NULL) {
		FUNC8(parent, "gic: Unable to map the MADT\n");
		return;
	}

	FUNC7(&madt_data, sizeof(madt_data));
	madt_data.parent = parent;
	madt_data.dist = NULL;

	FUNC6(madt + 1, (char *)madt + madt->Header.Length,
	    madt_handler, &madt_data);

	/* Check the version of the GIC we have */
	switch (madt_data.dist->Version) {
	case ACPI_MADT_GIC_VERSION_NONE:
	case ACPI_MADT_GIC_VERSION_V1:
	case ACPI_MADT_GIC_VERSION_V2:
		break;
	default:
		goto out;
	}

	intr = NULL;
	for (i = 0; i < MAXCPU; i++) {
		if (madt_data.intr[i] != NULL) {
			if (intr == NULL) {
				intr = madt_data.intr[i];
			} else if (intr->BaseAddress !=
			    madt_data.intr[i]->BaseAddress) {
				FUNC8(parent,
"gic: Not all CPU interfaces at the same address, this may fail\n");
			}
		}
	}
	if (intr == NULL) {
		FUNC8(parent, "gic: No CPU interfaces found\n");
		goto out;
	}

	dev = FUNC0(parent, BUS_PASS_INTERRUPT + BUS_PASS_ORDER_MIDDLE,
	    "gic", -1);
	if (dev == NULL) {
		FUNC8(parent, "add gic child failed\n");
		goto out;
	}

	FUNC1(parent, dev, SYS_RES_MEMORY, 0,
	    madt_data.dist->BaseAddress, 4 * 1024);
	FUNC1(parent, dev, SYS_RES_MEMORY, 1,
	    intr->BaseAddress, 4 * 1024);

	FUNC4(dev, (void *)(uintptr_t)madt_data.dist->Version);
out:
	FUNC5(madt);
}