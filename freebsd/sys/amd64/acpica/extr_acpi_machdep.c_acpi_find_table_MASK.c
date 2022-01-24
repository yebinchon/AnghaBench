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
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_11__ {int Revision; scalar_t__ XsdtPhysicalAddress; scalar_t__ RsdtPhysicalAddress; } ;
struct TYPE_9__ {int Length; } ;
struct TYPE_10__ {scalar_t__* TableOffsetEntry; TYPE_1__ Header; } ;
typedef  TYPE_2__ ACPI_TABLE_XSDT ;
typedef  TYPE_2__ ACPI_TABLE_RSDT ;
typedef  TYPE_4__ ACPI_TABLE_RSDP ;
typedef  TYPE_2__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_RSDP_XCHECKSUM_LENGTH ; 
 char const* ACPI_SIG_RSDT ; 
 char const* ACPI_SIG_XSDT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ bootverbose ; 
 TYPE_2__* FUNC3 (scalar_t__,int,char const*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__,char const*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

vm_paddr_t
FUNC9(const char *sig)
{
	ACPI_PHYSICAL_ADDRESS rsdp_ptr;
	ACPI_TABLE_RSDP *rsdp;
	ACPI_TABLE_RSDT *rsdt;
	ACPI_TABLE_XSDT *xsdt;
	ACPI_TABLE_HEADER *table;
	vm_paddr_t addr;
	int i, count;

	if (FUNC8("acpi", 0))
		return (0);

	/*
	 * Map in the RSDP.  Since ACPI uses AcpiOsMapMemory() which in turn
	 * calls pmap_mapbios() to find the RSDP, we assume that we can use
	 * pmap_mapbios() to map the RSDP.
	 */
	if ((rsdp_ptr = FUNC0()) == 0)
		return (0);
	rsdp = FUNC4(rsdp_ptr, sizeof(ACPI_TABLE_RSDP));
	if (rsdp == NULL) {
		if (bootverbose)
			FUNC6("ACPI: Failed to map RSDP\n");
		return (0);
	}

	/*
	 * For ACPI >= 2.0, use the XSDT if it is available.
	 * Otherwise, use the RSDT.  We map the XSDT or RSDT at page 2
	 * in the crashdump area.  Pages 0 and 1 are used to map in the
	 * headers of candidate ACPI tables.
	 */
	addr = 0;
	if (rsdp->Revision >= 2 && rsdp->XsdtPhysicalAddress != 0) {
		/*
		 * AcpiOsGetRootPointer only verifies the checksum for
		 * the version 1.0 portion of the RSDP.  Version 2.0 has
		 * an additional checksum that we verify first.
		 */
		if (FUNC1((UINT8 *)rsdp, ACPI_RSDP_XCHECKSUM_LENGTH)) {
			if (bootverbose)
				FUNC6("ACPI: RSDP failed extended checksum\n");
			return (0);
		}
		xsdt = FUNC3(rsdp->XsdtPhysicalAddress, 2, ACPI_SIG_XSDT);
		if (xsdt == NULL) {
			if (bootverbose)
				FUNC6("ACPI: Failed to map XSDT\n");
			return (0);
		}
		count = (xsdt->Header.Length - sizeof(ACPI_TABLE_HEADER)) /
		    sizeof(UINT64);
		for (i = 0; i < count; i++)
			if (FUNC7(xsdt->TableOffsetEntry[i], sig)) {
				addr = xsdt->TableOffsetEntry[i];
				break;
			}
		FUNC2(xsdt);
	} else {
		rsdt = FUNC3(rsdp->RsdtPhysicalAddress, 2, ACPI_SIG_RSDT);
		if (rsdt == NULL) {
			if (bootverbose)
				FUNC6("ACPI: Failed to map RSDT\n");
			return (0);
		}
		count = (rsdt->Header.Length - sizeof(ACPI_TABLE_HEADER)) /
		    sizeof(UINT32);
		for (i = 0; i < count; i++)
			if (FUNC7(rsdt->TableOffsetEntry[i], sig)) {
				addr = rsdt->TableOffsetEntry[i];
				break;
			}
		FUNC2(rsdt);
	}
	FUNC5((vm_offset_t)rsdp, sizeof(ACPI_TABLE_RSDP));
	if (addr == 0) {
		if (bootverbose)
			FUNC6("ACPI: No %s table found\n", sig);
		return (0);
	}
	if (bootverbose)
		FUNC6("%s: Found table at 0x%jx\n", sig, (uintmax_t)addr);

	/*
	 * Verify that we can map the full table and that its checksum is
	 * correct, etc.
	 */
	table = FUNC3(addr, 0, sig);
	if (table == NULL)
		return (0);
	FUNC2(table);

	return (addr);
}