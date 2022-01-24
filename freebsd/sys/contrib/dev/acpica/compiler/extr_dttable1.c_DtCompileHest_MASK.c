#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
typedef  int UINT16 ;
struct TYPE_8__ {scalar_t__ NumHardwareBanks; } ;
struct TYPE_7__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ DT_SUBTABLE ;
typedef  int /*<<< orphan*/  DT_FIELD ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_DMTABLE_INFO ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_HEST_IA_CORRECTED ; 
 int /*<<< orphan*/  ACPI_HEST_IA_DEFERRED_CHECK ; 
 int /*<<< orphan*/  ACPI_HEST_IA_MACHINE_CHECK ; 
#define  ACPI_HEST_TYPE_AER_BRIDGE 136 
#define  ACPI_HEST_TYPE_AER_ENDPOINT 135 
#define  ACPI_HEST_TYPE_AER_ROOT_PORT 134 
#define  ACPI_HEST_TYPE_GENERIC_ERROR 133 
#define  ACPI_HEST_TYPE_GENERIC_ERROR_V2 132 
#define  ACPI_HEST_TYPE_IA32_CHECK 131 
#define  ACPI_HEST_TYPE_IA32_CORRECTED_CHECK 130 
#define  ACPI_HEST_TYPE_IA32_DEFERRED_CHECK 129 
#define  ACPI_HEST_TYPE_IA32_NMI 128 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_MSG_UNKNOWN_SUBTABLE ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest0 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest1 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest10 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest11 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest2 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest6 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest7 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest8 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHest9 ; 
 int /*<<< orphan*/ * AcpiDmTableInfoHestBank ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 

ACPI_STATUS
FUNC7 (
    void                    **List)
{
    ACPI_STATUS             Status;
    DT_SUBTABLE             *Subtable;
    DT_SUBTABLE             *ParentTable;
    DT_FIELD                **PFieldList = (DT_FIELD **) List;
    DT_FIELD                *SubtableStart;
    ACPI_DMTABLE_INFO       *InfoTable;
    UINT16                  Type;
    UINT32                  BankCount;


    Status = FUNC3 (PFieldList, AcpiDmTableInfoHest,
        &Subtable);
    if (FUNC1 (Status))
    {
        return (Status);
    }

    ParentTable = FUNC6 ();
    FUNC5 (ParentTable, Subtable);

    while (*PFieldList)
    {
        /* Get subtable type */

        SubtableStart = *PFieldList;
        FUNC2 ((UINT8 *) &Type, *PFieldList, 2, 0);

        switch (Type)
        {
        case ACPI_HEST_TYPE_IA32_CHECK:

            InfoTable = AcpiDmTableInfoHest0;
            break;

        case ACPI_HEST_TYPE_IA32_CORRECTED_CHECK:

            InfoTable = AcpiDmTableInfoHest1;
            break;

        case ACPI_HEST_TYPE_IA32_NMI:

            InfoTable = AcpiDmTableInfoHest2;
            break;

        case ACPI_HEST_TYPE_AER_ROOT_PORT:

            InfoTable = AcpiDmTableInfoHest6;
            break;

        case ACPI_HEST_TYPE_AER_ENDPOINT:

            InfoTable = AcpiDmTableInfoHest7;
            break;

        case ACPI_HEST_TYPE_AER_BRIDGE:

            InfoTable = AcpiDmTableInfoHest8;
            break;

        case ACPI_HEST_TYPE_GENERIC_ERROR:

            InfoTable = AcpiDmTableInfoHest9;
            break;

        case ACPI_HEST_TYPE_GENERIC_ERROR_V2:

            InfoTable = AcpiDmTableInfoHest10;
            break;

        case ACPI_HEST_TYPE_IA32_DEFERRED_CHECK:

            InfoTable = AcpiDmTableInfoHest11;
            break;

        default:

            /* Cannot continue on unknown type */

            FUNC4 (ASL_MSG_UNKNOWN_SUBTABLE, SubtableStart, "HEST");
            return (AE_ERROR);
        }

        Status = FUNC3 (PFieldList, InfoTable, &Subtable);
        if (FUNC1 (Status))
        {
            return (Status);
        }

        FUNC5 (ParentTable, Subtable);

        /*
         * Additional subtable data - IA32 Error Bank(s)
         */
        BankCount = 0;
        switch (Type)
        {
        case ACPI_HEST_TYPE_IA32_CHECK:

            BankCount = (FUNC0 (ACPI_HEST_IA_MACHINE_CHECK,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        case ACPI_HEST_TYPE_IA32_CORRECTED_CHECK:

            BankCount = (FUNC0 (ACPI_HEST_IA_CORRECTED,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        case ACPI_HEST_TYPE_IA32_DEFERRED_CHECK:

            BankCount = (FUNC0 (ACPI_HEST_IA_DEFERRED_CHECK,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        default:

            break;
        }

        while (BankCount)
        {
            Status = FUNC3 (PFieldList, AcpiDmTableInfoHestBank,
                &Subtable);
            if (FUNC1 (Status))
            {
                return (Status);
            }

            FUNC5 (ParentTable, Subtable);
            BankCount--;
        }
    }

    return (AE_OK);
}