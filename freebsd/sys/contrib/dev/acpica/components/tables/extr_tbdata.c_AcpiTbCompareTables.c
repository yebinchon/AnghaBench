
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_5__ {int * Tables; } ;
struct TYPE_4__ {size_t Length; int Pointer; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 TYPE_3__ AcpiGbl_RootTableList ;
 int AcpiTbAcquireTable (int *,int **,size_t*,int *) ;
 int AcpiTbReleaseTable (int *,size_t,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ memcmp (int ,int *,size_t) ;

__attribute__((used)) static BOOLEAN
AcpiTbCompareTables (
    ACPI_TABLE_DESC *TableDesc,
    UINT32 TableIndex)
{
    ACPI_STATUS Status = AE_OK;
    BOOLEAN IsIdentical;
    ACPI_TABLE_HEADER *Table;
    UINT32 TableLength;
    UINT8 TableFlags;


    Status = AcpiTbAcquireTable (&AcpiGbl_RootTableList.Tables[TableIndex],
        &Table, &TableLength, &TableFlags);
    if (ACPI_FAILURE (Status))
    {
        return (FALSE);
    }





    IsIdentical = (BOOLEAN)((TableDesc->Length != TableLength ||
        memcmp (TableDesc->Pointer, Table, TableLength)) ?
        FALSE : TRUE);



    AcpiTbReleaseTable (Table, TableLength, TableFlags);
    return (IsIdentical);
}
