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
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_4__ {int Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_DmOpt_Listing ; 
 int /*<<< orphan*/  AcpiGbl_ParseOpRoot ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  DB_BYTE_DISPLAY ; 
 int /*<<< orphan*/  FUNC4 () ; 

ACPI_STATUS
FUNC5 (
    char                    *Filename,
    ACPI_TABLE_HEADER       *Table)
{


    if (!AcpiGbl_ParseOpRoot)
    {
        return (AE_NOT_EXIST);
    }

    if (!AcpiGbl_DmOpt_Listing)
    {
        FUNC3 (Filename, Table);
    }

    FUNC0 (NULL, AcpiGbl_ParseOpRoot, ACPI_UINT32_MAX);
    FUNC4 ();

    if (AcpiGbl_DmOpt_Listing)
    {
        FUNC1 ("\n\nTable Header:\n");
        FUNC2 ((UINT8 *) Table, sizeof (ACPI_TABLE_HEADER),
            DB_BYTE_DISPLAY, ACPI_UINT32_MAX);

        FUNC1 ("Table Body (Length 0x%X)\n", Table->Length);
        FUNC2 (((UINT8 *) Table + sizeof (ACPI_TABLE_HEADER)),
            Table->Length, DB_BYTE_DISPLAY, ACPI_UINT32_MAX);
    }

    return (AE_OK);
}