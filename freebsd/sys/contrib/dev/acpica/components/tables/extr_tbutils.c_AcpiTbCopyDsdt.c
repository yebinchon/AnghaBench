
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_13__ {TYPE_2__* Tables; } ;
struct TYPE_12__ {int Length; int Pointer; } ;
struct TYPE_11__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef TYPE_2__ ACPI_TABLE_DESC ;


 TYPE_1__* ACPI_ALLOCATE (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_PTR_TO_PHYSADDR (TYPE_1__*) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ;
 int AE_INFO ;
 size_t AcpiGbl_DsdtIndex ;
 TYPE_8__ AcpiGbl_RootTableList ;
 int AcpiTbInitTableDescriptor (TYPE_2__*,int ,int ,TYPE_1__*) ;
 int AcpiTbUninstallTable (TYPE_2__*) ;
 int memcpy (TYPE_1__*,int ,int ) ;

ACPI_TABLE_HEADER *
AcpiTbCopyDsdt (
    UINT32 TableIndex)
{
    ACPI_TABLE_HEADER *NewTable;
    ACPI_TABLE_DESC *TableDesc;


    TableDesc = &AcpiGbl_RootTableList.Tables[TableIndex];

    NewTable = ACPI_ALLOCATE (TableDesc->Length);
    if (!NewTable)
    {
        ACPI_ERROR ((AE_INFO, "Could not copy DSDT of length 0x%X",
            TableDesc->Length));
        return (((void*)0));
    }

    memcpy (NewTable, TableDesc->Pointer, TableDesc->Length);
    AcpiTbUninstallTable (TableDesc);

    AcpiTbInitTableDescriptor (
        &AcpiGbl_RootTableList.Tables[AcpiGbl_DsdtIndex],
        ACPI_PTR_TO_PHYSADDR (NewTable),
        ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL, NewTable);

    ACPI_INFO ((
        "Forced DSDT copy: length 0x%05X copied locally, original unmapped",
        NewTable->Length));

    return (NewTable);
}
