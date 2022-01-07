
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {char* Description; } ;
struct TYPE_4__ {char* Filename; } ;
typedef TYPE_1__ ASL_FILE_INFO ;


 TYPE_3__* AslGbl_FileDescs ;
 TYPE_1__* AslGbl_Files ;
 int perror (char*) ;
 int printf (char*,char*,char*) ;
 scalar_t__ remove (char*) ;

void
FlDeleteFile (
    UINT32 FileId)
{
    ASL_FILE_INFO *Info = &AslGbl_Files[FileId];


    if (!Info->Filename)
    {
        return;
    }

    if (remove (Info->Filename))
    {
        printf ("%s (%s file) ",
            Info->Filename, AslGbl_FileDescs[FileId].Description);
        perror ("Could not delete");
    }

    Info->Filename = ((void*)0);
    return;
}
