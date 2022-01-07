
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int OemTableId; int Length; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MOVE_32_TO_32 (int ,int ) ;
 int ACPI_SIG_DSDT ;
 int AE_NO_ACPI_TABLES ;
 int AE_OK ;
 int AcpiOsTableOverride (TYPE_1__*,TYPE_1__**) ;
 int AdStoreTable (TYPE_1__*,int *) ;
 int AdWriteTable (TYPE_1__*,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

ACPI_STATUS
AdGetLocalTables (
    void)
{
    ACPI_STATUS Status;
    ACPI_TABLE_HEADER TableHeader;
    ACPI_TABLE_HEADER *NewTable;
    UINT32 TableIndex;




    ACPI_MOVE_32_TO_32 (TableHeader.Signature, ACPI_SIG_DSDT);
    Status = AcpiOsTableOverride (&TableHeader, &NewTable);
    if (ACPI_FAILURE (Status) || !NewTable)
    {
        fprintf (stderr, "Could not obtain DSDT\n");
        return (AE_NO_ACPI_TABLES);
    }

    AdWriteTable (NewTable, NewTable->Length,
        ACPI_SIG_DSDT, NewTable->OemTableId);



    Status = AdStoreTable (NewTable, &TableIndex);
    if (ACPI_FAILURE (Status))
    {
        fprintf (stderr, "Could not store DSDT\n");
        return (AE_NO_ACPI_TABLES);
    }

    return (AE_OK);
}
