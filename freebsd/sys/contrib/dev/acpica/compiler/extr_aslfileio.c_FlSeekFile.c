
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int Handle; } ;


 int ASL_MSG_SEEK ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 int FlFileError (size_t,int ) ;
 int SEEK_SET ;
 int fseek (int ,long,int ) ;

void
FlSeekFile (
    UINT32 FileId,
    long Offset)
{
    int Error;


    Error = fseek (AslGbl_Files[FileId].Handle, Offset, SEEK_SET);
    if (Error)
    {
        FlFileError (FileId, ASL_MSG_SEEK);
        AslAbort ();
    }
}
