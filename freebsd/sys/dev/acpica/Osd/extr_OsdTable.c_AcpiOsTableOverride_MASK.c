#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/ * Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  AcpiGbl_DisableSsdtTableInstall ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5(ACPI_TABLE_HEADER *ExistingTable,
    ACPI_TABLE_HEADER **NewTable)
{
	char modname[] = "acpi_dsdt";
	caddr_t acpi_table;
	ACPI_TABLE_HEADER *hdr;
	size_t sz;

	if (ExistingTable == NULL || NewTable == NULL)
		return (AE_BAD_PARAMETER);

	*NewTable = NULL;
	if (!FUNC0(ExistingTable->Signature, ACPI_SIG_DSDT))
#ifdef notyet
		for (int i = 0; i < ACPI_NAMESEG_SIZE; i++)
			modname[i + 5] = tolower(ExistingTable->Signature[i]);
#else
		return (AE_SUPPORT);
#endif
	acpi_table = FUNC3(modname);
	if (acpi_table == NULL)
		return (AE_NOT_FOUND);
	hdr = FUNC1(acpi_table);
	sz = FUNC2(acpi_table);
	if (hdr == NULL || sz == 0)
		return (AE_ERROR);
#ifndef notyet
	/* Assume SSDT is installed with DSDT. */
	AcpiGbl_DisableSsdtTableInstall = TRUE;
#endif
	*NewTable = hdr;
	return (AE_OK);
}