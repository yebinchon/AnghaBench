
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_8__ {scalar_t__ NumHardwareBanks; } ;
struct TYPE_7__ {int Buffer; } ;
typedef TYPE_1__ DT_SUBTABLE ;
typedef int DT_FIELD ;
typedef int ACPI_STATUS ;
typedef int ACPI_DMTABLE_INFO ;


 TYPE_6__* ACPI_CAST_PTR (int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HEST_IA_CORRECTED ;
 int ACPI_HEST_IA_DEFERRED_CHECK ;
 int ACPI_HEST_IA_MACHINE_CHECK ;
 int AE_ERROR ;
 int AE_OK ;
 int ASL_MSG_UNKNOWN_SUBTABLE ;
 int * AcpiDmTableInfoHest ;
 int * AcpiDmTableInfoHest0 ;
 int * AcpiDmTableInfoHest1 ;
 int * AcpiDmTableInfoHest10 ;
 int * AcpiDmTableInfoHest11 ;
 int * AcpiDmTableInfoHest2 ;
 int * AcpiDmTableInfoHest6 ;
 int * AcpiDmTableInfoHest7 ;
 int * AcpiDmTableInfoHest8 ;
 int * AcpiDmTableInfoHest9 ;
 int * AcpiDmTableInfoHestBank ;
 int DtCompileInteger (int *,int *,int,int ) ;
 int DtCompileTable (int **,int *,TYPE_1__**) ;
 int DtFatal (int ,int *,char*) ;
 int DtInsertSubtable (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* DtPeekSubtable () ;

ACPI_STATUS
DtCompileHest (
    void **List)
{
    ACPI_STATUS Status;
    DT_SUBTABLE *Subtable;
    DT_SUBTABLE *ParentTable;
    DT_FIELD **PFieldList = (DT_FIELD **) List;
    DT_FIELD *SubtableStart;
    ACPI_DMTABLE_INFO *InfoTable;
    UINT16 Type;
    UINT32 BankCount;


    Status = DtCompileTable (PFieldList, AcpiDmTableInfoHest,
        &Subtable);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    ParentTable = DtPeekSubtable ();
    DtInsertSubtable (ParentTable, Subtable);

    while (*PFieldList)
    {


        SubtableStart = *PFieldList;
        DtCompileInteger ((UINT8 *) &Type, *PFieldList, 2, 0);

        switch (Type)
        {
        case 131:

            InfoTable = AcpiDmTableInfoHest0;
            break;

        case 130:

            InfoTable = AcpiDmTableInfoHest1;
            break;

        case 128:

            InfoTable = AcpiDmTableInfoHest2;
            break;

        case 134:

            InfoTable = AcpiDmTableInfoHest6;
            break;

        case 135:

            InfoTable = AcpiDmTableInfoHest7;
            break;

        case 136:

            InfoTable = AcpiDmTableInfoHest8;
            break;

        case 133:

            InfoTable = AcpiDmTableInfoHest9;
            break;

        case 132:

            InfoTable = AcpiDmTableInfoHest10;
            break;

        case 129:

            InfoTable = AcpiDmTableInfoHest11;
            break;

        default:



            DtFatal (ASL_MSG_UNKNOWN_SUBTABLE, SubtableStart, "HEST");
            return (AE_ERROR);
        }

        Status = DtCompileTable (PFieldList, InfoTable, &Subtable);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        DtInsertSubtable (ParentTable, Subtable);




        BankCount = 0;
        switch (Type)
        {
        case 131:

            BankCount = (ACPI_CAST_PTR (ACPI_HEST_IA_MACHINE_CHECK,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        case 130:

            BankCount = (ACPI_CAST_PTR (ACPI_HEST_IA_CORRECTED,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        case 129:

            BankCount = (ACPI_CAST_PTR (ACPI_HEST_IA_DEFERRED_CHECK,
                Subtable->Buffer))->NumHardwareBanks;
            break;

        default:

            break;
        }

        while (BankCount)
        {
            Status = DtCompileTable (PFieldList, AcpiDmTableInfoHestBank,
                &Subtable);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }

            DtInsertSubtable (ParentTable, Subtable);
            BankCount--;
        }
    }

    return (AE_OK);
}
