#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int Length; } ;
struct TYPE_7__ {TYPE_1__ Header; } ;
typedef  TYPE_2__ ACPI_TABLE_MADT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_MADT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gic_v3_add_children ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	ACPI_TABLE_MADT *madt;
	vm_paddr_t physaddr;

	physaddr = FUNC0(ACPI_SIG_MADT);
	if (physaddr == 0)
		return;

	madt = FUNC1(physaddr, ACPI_SIG_MADT);
	if (madt == NULL) {
		FUNC5(dev, "Unable to map the MADT to add children\n");
		return;
	}

	FUNC3(madt + 1, (char *)madt + madt->Header.Length,
	    gic_v3_add_children, dev);

	FUNC2(madt);

	FUNC4(dev);
}