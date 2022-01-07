
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Pointer; int Flags; int Length; } ;
typedef TYPE_1__ ACPI_TABLE_DESC ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiTbReleaseTable (int *,int ,int ) ;
 int TbInvalidateTable ;
 int return_VOID ;

void
AcpiTbInvalidateTable (
    ACPI_TABLE_DESC *TableDesc)
{

    ACPI_FUNCTION_TRACE (TbInvalidateTable);




    if (!TableDesc->Pointer)
    {
        return_VOID;
    }

    AcpiTbReleaseTable (TableDesc->Pointer, TableDesc->Length,
        TableDesc->Flags);
    TableDesc->Pointer = ((void*)0);

    return_VOID;
}
