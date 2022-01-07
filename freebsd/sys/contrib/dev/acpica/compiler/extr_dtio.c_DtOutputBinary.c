
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Handle; } ;
typedef int DT_SUBTABLE ;


 scalar_t__ ACPI_UINT32_MAX ;
 size_t ASL_FILE_AML_OUTPUT ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 scalar_t__ AslGbl_TableLength ;
 scalar_t__ CmGetFileSize (int ) ;
 int DtWalkTableTree (int *,int ,int *,int *) ;
 int DtWriteBinary ;

void
DtOutputBinary (
    DT_SUBTABLE *RootTable)
{

    if (!RootTable)
    {
        return;
    }



    DtWalkTableTree (RootTable, DtWriteBinary, ((void*)0), ((void*)0));

    AslGbl_TableLength = CmGetFileSize (AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle);
    if (AslGbl_TableLength == ACPI_UINT32_MAX)
    {
        AslAbort ();
    }
}
