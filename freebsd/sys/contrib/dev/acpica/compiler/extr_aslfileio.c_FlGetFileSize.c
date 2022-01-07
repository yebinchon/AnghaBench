
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int Handle; } ;


 size_t ACPI_UINT32_MAX ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 size_t CmGetFileSize (int ) ;

UINT32
FlGetFileSize (
    UINT32 FileId)
{
    UINT32 FileSize;


    FileSize = CmGetFileSize (AslGbl_Files[FileId].Handle);
    if (FileSize == ACPI_UINT32_MAX)
    {
        AslAbort();
    }

    return (FileSize);
}
