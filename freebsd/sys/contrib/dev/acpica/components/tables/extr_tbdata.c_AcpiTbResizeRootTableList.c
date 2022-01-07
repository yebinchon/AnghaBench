
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_8__ {int Flags; size_t MaxTableCount; size_t CurrentTableCount; TYPE_1__* Tables; } ;
struct TYPE_7__ {scalar_t__ Address; } ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 TYPE_1__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_ROOT_ALLOW_RESIZE ;
 int ACPI_ROOT_ORIGIN_ALLOCATED ;
 size_t ACPI_ROOT_TABLE_SIZE_INCREMENT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 TYPE_4__ AcpiGbl_RootTableList ;
 int TbResizeRootTableList ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbResizeRootTableList (
    void)
{
    ACPI_TABLE_DESC *Tables;
    UINT32 TableCount;
    UINT32 CurrentTableCount, MaxTableCount;
    UINT32 i;


    ACPI_FUNCTION_TRACE (TbResizeRootTableList);




    if (!(AcpiGbl_RootTableList.Flags & ACPI_ROOT_ALLOW_RESIZE))
    {
        ACPI_ERROR ((AE_INFO, "Resize of Root Table Array is not allowed"));
        return_ACPI_STATUS (AE_SUPPORT);
    }



    if (AcpiGbl_RootTableList.Flags & ACPI_ROOT_ORIGIN_ALLOCATED)
    {
        TableCount = AcpiGbl_RootTableList.MaxTableCount;
    }
    else
    {
        TableCount = AcpiGbl_RootTableList.CurrentTableCount;
    }

    MaxTableCount = TableCount + ACPI_ROOT_TABLE_SIZE_INCREMENT;
    Tables = ACPI_ALLOCATE_ZEROED (
        ((ACPI_SIZE) MaxTableCount) * sizeof (ACPI_TABLE_DESC));
    if (!Tables)
    {
        ACPI_ERROR ((AE_INFO, "Could not allocate new root table array"));
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    CurrentTableCount = 0;
    if (AcpiGbl_RootTableList.Tables)
    {
        for (i = 0; i < TableCount; i++)
        {
            if (AcpiGbl_RootTableList.Tables[i].Address)
            {
                memcpy (Tables + CurrentTableCount,
                    AcpiGbl_RootTableList.Tables + i,
                    sizeof (ACPI_TABLE_DESC));
                CurrentTableCount++;
            }
        }

        if (AcpiGbl_RootTableList.Flags & ACPI_ROOT_ORIGIN_ALLOCATED)
        {
            ACPI_FREE (AcpiGbl_RootTableList.Tables);
        }
    }

    AcpiGbl_RootTableList.Tables = Tables;
    AcpiGbl_RootTableList.MaxTableCount = MaxTableCount;
    AcpiGbl_RootTableList.CurrentTableCount = CurrentTableCount;
    AcpiGbl_RootTableList.Flags |= ACPI_ROOT_ORIGIN_ALLOCATED;

    return_ACPI_STATUS (AE_OK);
}
