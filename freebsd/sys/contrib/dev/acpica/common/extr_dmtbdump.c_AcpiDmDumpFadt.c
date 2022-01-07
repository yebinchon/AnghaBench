
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Length; int Revision; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FADT_V1_SIZE ;
 scalar_t__ ACPI_FADT_V2_SIZE ;
 scalar_t__ ACPI_FADT_V3_SIZE ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiDmDumpTable (scalar_t__,int ,TYPE_1__*,int ,int ) ;
 int AcpiDmTableInfoFadt1 ;
 int AcpiDmTableInfoFadt2 ;
 int AcpiDmTableInfoFadt3 ;
 int AcpiDmTableInfoFadt5 ;
 int AcpiDmTableInfoFadt6 ;
 int AcpiDmValidateFadtLength (int ,scalar_t__) ;
 int AcpiTbCreateLocalFadt (TYPE_1__*,scalar_t__) ;

void
AcpiDmDumpFadt (
    ACPI_TABLE_HEADER *Table)
{
    ACPI_STATUS Status;




    Status = AcpiDmDumpTable (Table->Length, 0, Table, 0,
        AcpiDmTableInfoFadt1);
    if (ACPI_FAILURE (Status))
    {
        return;
    }



    if ((Table->Length > ACPI_FADT_V1_SIZE) &&
        (Table->Length <= ACPI_FADT_V2_SIZE))
    {
        Status = AcpiDmDumpTable (Table->Length, 0, Table, 0,
            AcpiDmTableInfoFadt2);
        if (ACPI_FAILURE (Status))
        {
            return;
        }
    }



    else if (Table->Length > ACPI_FADT_V2_SIZE)
    {
        Status = AcpiDmDumpTable (Table->Length, 0, Table, 0,
            AcpiDmTableInfoFadt3);
        if (ACPI_FAILURE (Status))
        {
            return;
        }



        if (Table->Length > ACPI_FADT_V3_SIZE)
        {
            Status = AcpiDmDumpTable (Table->Length, 0, Table, 0,
                AcpiDmTableInfoFadt5);
            if (ACPI_FAILURE (Status))
            {
                return;
            }
        }



        if (Table->Length > ACPI_FADT_V3_SIZE)
        {
            Status = AcpiDmDumpTable (Table->Length, 0, Table, 0,
                AcpiDmTableInfoFadt6);
            if (ACPI_FAILURE (Status))
            {
                return;
            }
        }
    }



    AcpiTbCreateLocalFadt (Table, Table->Length);



    AcpiDmValidateFadtLength (Table->Revision, Table->Length);
}
