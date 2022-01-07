
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int Handle; } ;
typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 int ASL_MSG_READ ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 int FlFileError (size_t,int ) ;
 scalar_t__ feof (int ) ;
 size_t fread (void*,int,size_t,int ) ;

ACPI_STATUS
FlReadFile (
    UINT32 FileId,
    void *Buffer,
    UINT32 Length)
{
    UINT32 Actual;




    Actual = fread (Buffer, 1, Length, AslGbl_Files[FileId].Handle);
    if (Actual < Length)
    {
        if (feof (AslGbl_Files[FileId].Handle))
        {


            return (AE_ERROR);
        }

        FlFileError (FileId, ASL_MSG_READ);
        AslAbort ();
    }

    return (AE_OK);
}
