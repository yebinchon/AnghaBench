
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Dir; struct TYPE_3__* Next; } ;
typedef int FILE ;
typedef TYPE_1__ ASL_INCLUDE_DIR ;


 int ASL_ERROR ;
 int ASL_MSG_INCLUDE_FILE_OPEN ;
 int AslGbl_CurrentLineOffset ;
 char* AslGbl_DirectoryPath ;
 TYPE_1__* AslGbl_IncludeDirList ;
 int AslGbl_MainTokenBuffer ;
 int PrError (int ,int ,int ) ;
 int * PrOpenIncludeWithPrefix (char*,char*,char*,char**) ;
 int errno ;
 int sprintf (int ,char*,char*,char*) ;
 char* strerror (int ) ;

FILE *
PrOpenIncludeFile (
    char *Filename,
    char *OpenMode,
    char **FullPathname)
{
    FILE *IncludeFile;
    ASL_INCLUDE_DIR *NextDir;




    AslGbl_CurrentLineOffset++;




    if ((Filename[0] == '/') ||
        (Filename[0] == '\\') ||
        (Filename[1] == ':'))
    {
        IncludeFile = PrOpenIncludeWithPrefix (
            "", Filename, OpenMode, FullPathname);
        if (!IncludeFile)
        {
            goto ErrorExit;
        }
        return (IncludeFile);
    }
    IncludeFile = PrOpenIncludeWithPrefix (
        AslGbl_DirectoryPath, Filename, OpenMode, FullPathname);
    if (IncludeFile)
    {
        return (IncludeFile);
    }





    NextDir = AslGbl_IncludeDirList;
    while (NextDir)
    {
        IncludeFile = PrOpenIncludeWithPrefix (
            NextDir->Dir, Filename, OpenMode, FullPathname);
        if (IncludeFile)
        {
            return (IncludeFile);
        }

        NextDir = NextDir->Next;
    }



ErrorExit:
    sprintf (AslGbl_MainTokenBuffer, "%s, %s", Filename, strerror (errno));
    PrError (ASL_ERROR, ASL_MSG_INCLUDE_FILE_OPEN, 0);
    return (((void*)0));
}
