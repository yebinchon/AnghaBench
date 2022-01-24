#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ACPI_EXT_ORIGIN_FROM_FILE ; 
 int ACPI_EXT_RESOLVED_REFERENCE ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  ASL_STRING_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* AslGbl_ExternalRefFilename ; 
 int /*<<< orphan*/ * AslGbl_StringBuffer ; 
 int /*<<< orphan*/  METHOD_SEPARATORS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC11 (
    void)
{
    FILE                    *ExternalRefFile;
    char                    *Token;
    char                    *MethodName;
    UINT32                  ArgCount;
    UINT32                  ImportCount = 0;


    if (!AslGbl_ExternalRefFilename)
    {
        return;
    }

    /* Open the file */

    ExternalRefFile = FUNC6 (AslGbl_ExternalRefFilename, "r");
    if (!ExternalRefFile)
    {
        FUNC7 (stderr, "Could not open external reference file \"%s\"\n",
            AslGbl_ExternalRefFilename);
        FUNC3 ();
        return;
    }

    /* Each line defines a method */

    while (FUNC5 (AslGbl_StringBuffer, ASL_STRING_BUFFER_SIZE, ExternalRefFile))
    {
        Token = FUNC9 (AslGbl_StringBuffer, METHOD_SEPARATORS);   /* "External" */
        if (!Token)
        {
            continue;
        }

        if (FUNC8 (Token, "External"))
        {
            continue;
        }

        MethodName = FUNC9 (NULL, METHOD_SEPARATORS);      /* Method namepath */
        if (!MethodName)
        {
            continue;
        }

        Token = FUNC9 (NULL, METHOD_SEPARATORS);           /* "MethodObj" */
        if (!Token)
        {
            continue;
        }

        if (FUNC8 (Token, "MethodObj"))
        {
            continue;
        }

        Token = FUNC9 (NULL, METHOD_SEPARATORS);           /* Arg count */
        if (!Token)
        {
            continue;
        }

        /* Convert arg count string to an integer */

        errno = 0;
        ArgCount = FUNC10 (Token, NULL, 0);
        if (errno)
        {
            FUNC7 (stderr, "Invalid argument count (%s)\n", Token);
            continue;
        }

        if (ArgCount > 7)
        {
            FUNC7 (stderr, "Invalid argument count (%u)\n", ArgCount);
            continue;
        }

        /* Add this external to the global list */

        FUNC2 ("%s: Importing method external (%u arguments) %s\n",
            AslGbl_ExternalRefFilename, ArgCount, MethodName);

        FUNC1 (MethodName, ACPI_TYPE_METHOD,
            ArgCount, (ACPI_EXT_RESOLVED_REFERENCE | ACPI_EXT_ORIGIN_FROM_FILE));
        ImportCount++;
    }

    if (!ImportCount)
    {
        FUNC7 (stderr,
            "Did not find any external methods in reference file \"%s\"\n",
            AslGbl_ExternalRefFilename);
    }
    else
    {
        /* Add the external(s) to the namespace */

        FUNC0 ();

        FUNC2 ("%s: Imported %u external method definitions\n",
            AslGbl_ExternalRefFilename, ImportCount);
    }

    FUNC4 (ExternalRefFile);
}