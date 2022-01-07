
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int FILE ;


 int ACPI_EXT_ORIGIN_FROM_FILE ;
 int ACPI_EXT_RESOLVED_REFERENCE ;
 int ACPI_TYPE_METHOD ;
 int ASL_STRING_BUFFER_SIZE ;
 int AcpiDmAddExternalListToNamespace () ;
 int AcpiDmAddPathToExternalList (char*,int ,int,int) ;
 int AcpiOsPrintf (char*,char*,int,...) ;
 int AslAbort () ;
 char* AslGbl_ExternalRefFilename ;
 int * AslGbl_StringBuffer ;
 int METHOD_SEPARATORS ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ fgets (int *,int ,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok (int *,int ) ;
 int strtoul (char*,int *,int ) ;

void
AcpiDmGetExternalsFromFile (
    void)
{
    FILE *ExternalRefFile;
    char *Token;
    char *MethodName;
    UINT32 ArgCount;
    UINT32 ImportCount = 0;


    if (!AslGbl_ExternalRefFilename)
    {
        return;
    }



    ExternalRefFile = fopen (AslGbl_ExternalRefFilename, "r");
    if (!ExternalRefFile)
    {
        fprintf (stderr, "Could not open external reference file \"%s\"\n",
            AslGbl_ExternalRefFilename);
        AslAbort ();
        return;
    }



    while (fgets (AslGbl_StringBuffer, ASL_STRING_BUFFER_SIZE, ExternalRefFile))
    {
        Token = strtok (AslGbl_StringBuffer, METHOD_SEPARATORS);
        if (!Token)
        {
            continue;
        }

        if (strcmp (Token, "External"))
        {
            continue;
        }

        MethodName = strtok (((void*)0), METHOD_SEPARATORS);
        if (!MethodName)
        {
            continue;
        }

        Token = strtok (((void*)0), METHOD_SEPARATORS);
        if (!Token)
        {
            continue;
        }

        if (strcmp (Token, "MethodObj"))
        {
            continue;
        }

        Token = strtok (((void*)0), METHOD_SEPARATORS);
        if (!Token)
        {
            continue;
        }



        errno = 0;
        ArgCount = strtoul (Token, ((void*)0), 0);
        if (errno)
        {
            fprintf (stderr, "Invalid argument count (%s)\n", Token);
            continue;
        }

        if (ArgCount > 7)
        {
            fprintf (stderr, "Invalid argument count (%u)\n", ArgCount);
            continue;
        }



        AcpiOsPrintf ("%s: Importing method external (%u arguments) %s\n",
            AslGbl_ExternalRefFilename, ArgCount, MethodName);

        AcpiDmAddPathToExternalList (MethodName, ACPI_TYPE_METHOD,
            ArgCount, (ACPI_EXT_RESOLVED_REFERENCE | ACPI_EXT_ORIGIN_FROM_FILE));
        ImportCount++;
    }

    if (!ImportCount)
    {
        fprintf (stderr,
            "Did not find any external methods in reference file \"%s\"\n",
            AslGbl_ExternalRefFilename);
    }
    else
    {


        AcpiDmAddExternalListToNamespace ();

        AcpiOsPrintf ("%s: Imported %u external method definitions\n",
            AslGbl_ExternalRefFilename, ImportCount);
    }

    fclose (ExternalRefFile);
}
