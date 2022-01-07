
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AE_ERROR ;
 int ASL_FILE_INPUT ;
 int AslInsertLineBuffer (int) ;
 int AslResetCurrentLineBuffer () ;
 scalar_t__ FlReadFile (int ,char*,int) ;

__attribute__((used)) static void
CmFlushSourceCode (
    void)
{
    char Buffer;


    while (FlReadFile (ASL_FILE_INPUT, &Buffer, 1) != AE_ERROR)
    {
        AslInsertLineBuffer ((int) Buffer);
    }

    AslResetCurrentLineBuffer ();
}
