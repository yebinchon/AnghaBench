
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int Handle; } ;


 size_t ASL_FILE_PREPROCESSOR ;
 size_t ASL_FILE_PREPROCESSOR_USER ;
 int ASL_MSG_WRITE ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 scalar_t__ AslGbl_PreprocessorOutputFlag ;
 int FlFileError (size_t,int ) ;
 size_t fwrite (char*,int,size_t,int ) ;

void
FlWriteFile (
    UINT32 FileId,
    void *Buffer,
    UINT32 Length)
{
    UINT32 Actual;




    Actual = fwrite ((char *) Buffer, 1, Length, AslGbl_Files[FileId].Handle);
    if (Actual != Length)
    {
        FlFileError (FileId, ASL_MSG_WRITE);
        AslAbort ();
    }

    if ((FileId == ASL_FILE_PREPROCESSOR) && AslGbl_PreprocessorOutputFlag)
    {


        Actual = fwrite ((char *) Buffer, 1, Length,
            AslGbl_Files[ASL_FILE_PREPROCESSOR_USER].Handle);
        if (Actual != Length)
        {
            FlFileError (FileId, ASL_MSG_WRITE);
            AslAbort ();
        }
    }
}
