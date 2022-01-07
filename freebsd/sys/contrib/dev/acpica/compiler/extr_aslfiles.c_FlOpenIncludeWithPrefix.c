
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int FILE ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ ASL_EOF ;
 int ASL_ERROR ;
 int ASL_MSG_INCLUDE_FILE ;
 int ASL_PARSE_OUTPUT ;
 int AslError (int ,int ,int *,char*) ;
 char* AslGbl_CurrentLineBuffer ;
 scalar_t__ AslGbl_CurrentLineNumber ;
 int AslPushInputFileStack (int *,char*) ;
 int DT_ALLOW_MULTILINE_QUOTES ;
 int DbgPrint (int ,char*,char*) ;
 scalar_t__ DtGetNextLine (int *,int ) ;
 char* FlMergePathnames (char*,char*) ;
 int SEEK_SET ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;

__attribute__((used)) static FILE *
FlOpenIncludeWithPrefix (
    char *PrefixDir,
    ACPI_PARSE_OBJECT *Op,
    char *Filename)
{
    FILE *IncludeFile;
    char *Pathname;
    UINT32 OriginalLineNumber;




    Pathname = FlMergePathnames (PrefixDir, Filename);

    DbgPrint (ASL_PARSE_OUTPUT, "Include: Opening file - \"%s\"\n\n",
        Pathname);



    IncludeFile = fopen (Pathname, "r");
    if (!IncludeFile)
    {
        return (((void*)0));
    }
    AslGbl_CurrentLineNumber--;
    OriginalLineNumber = AslGbl_CurrentLineNumber;

    while (DtGetNextLine (IncludeFile, DT_ALLOW_MULTILINE_QUOTES) != ASL_EOF)
    {
        if (AslGbl_CurrentLineBuffer[0] == '#')
        {
            AslError (ASL_ERROR, ASL_MSG_INCLUDE_FILE,
                Op, "use #include instead");
        }
    }

    AslGbl_CurrentLineNumber = OriginalLineNumber;



    fseek (IncludeFile, 0, SEEK_SET);



    AslPushInputFileStack (IncludeFile, Pathname);
    return (IncludeFile);
}
