
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int * Handle; } ;


 int ASL_MSG_CLOSE ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 int FlFileError (size_t,int ) ;
 int fclose (int *) ;

void
FlCloseFile (
    UINT32 FileId)
{
    int Error;


    if (!AslGbl_Files[FileId].Handle)
    {
        return;
    }

    Error = fclose (AslGbl_Files[FileId].Handle);
    if (Error)
    {
        FlFileError (FileId, ASL_MSG_CLOSE);
        AslAbort ();
    }



    AslGbl_Files[FileId].Handle = ((void*)0);
    return;
}
