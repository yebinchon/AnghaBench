#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_4__ {char* Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC4(vm_paddr_t address, const char *sig)
{
	ACPI_TABLE_HEADER *table;

	table = FUNC2(address, 0, sizeof(ACPI_TABLE_HEADER));
	if (table == NULL) {
		if (bootverbose)
			FUNC0("ACPI: Failed to map table at 0x%jx\n",
			    (uintmax_t)address);
		return (0);
	}
	if (bootverbose)
		FUNC0("Table '%.4s' at 0x%jx\n", table->Signature,
		    (uintmax_t)address);

	if (FUNC1(table->Signature, sig, ACPI_NAMESEG_SIZE) != 0) {
		FUNC3(table, sizeof(ACPI_TABLE_HEADER));
		return (0);
	}
	FUNC3(table, sizeof(ACPI_TABLE_HEADER));
	return (1);
}