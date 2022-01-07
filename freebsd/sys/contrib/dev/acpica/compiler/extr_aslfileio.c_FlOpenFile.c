
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {char* Filename; int * Handle; } ;
typedef int FILE ;


 int ASL_MSG_OPEN ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 int FlFileError (size_t,int ) ;
 int * fopen (char*,char*) ;

void
FlOpenFile (
    UINT32 FileId,
    char *Filename,
    char *Mode)
{
    FILE *File;


    AslGbl_Files[FileId].Filename = Filename;
    AslGbl_Files[FileId].Handle = ((void*)0);

    File = fopen (Filename, Mode);
    if (!File)
    {
        FlFileError (FileId, ASL_MSG_OPEN);
        AslAbort ();
    }

    AslGbl_Files[FileId].Handle = File;
}
