
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {size_t CurrentTableCount; TYPE_1__* Tables; } ;
struct TYPE_3__ {int Flags; } ;
typedef int ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TABLE_IS_LOADED ;
 int ACPI_TABLE_IS_VERIFIED ;
 int AE_ALREADY_EXISTS ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 TYPE_2__ AcpiGbl_RootTableList ;
 int AcpiTbCompareTables (int *,size_t) ;
 int TbCheckDuplication ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiTbCheckDuplication (
    ACPI_TABLE_DESC *TableDesc,
    UINT32 *TableIndex)
{
    UINT32 i;


    ACPI_FUNCTION_TRACE (TbCheckDuplication);




    for (i = 0; i < AcpiGbl_RootTableList.CurrentTableCount; ++i)
    {


        if (!(AcpiGbl_RootTableList.Tables[i].Flags & ACPI_TABLE_IS_VERIFIED))
        {
            continue;
        }





        if (!AcpiTbCompareTables (TableDesc, i))
        {
            continue;
        }
        if (AcpiGbl_RootTableList.Tables[i].Flags &
            ACPI_TABLE_IS_LOADED)
        {


            return_ACPI_STATUS (AE_ALREADY_EXISTS);
        }
        else
        {
            *TableIndex = i;
            return_ACPI_STATUS (AE_CTRL_TERMINATE);
        }
    }



    return_ACPI_STATUS (AE_OK);
}
