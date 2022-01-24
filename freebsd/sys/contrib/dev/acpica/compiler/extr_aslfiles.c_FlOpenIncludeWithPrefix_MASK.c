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
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ ASL_EOF ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_INCLUDE_FILE ; 
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* AslGbl_CurrentLineBuffer ; 
 scalar_t__ AslGbl_CurrentLineNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  DT_ALLOW_MULTILINE_QUOTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC7 (
    char                    *PrefixDir,
    ACPI_PARSE_OBJECT       *Op,
    char                    *Filename)
{
    FILE                    *IncludeFile;
    char                    *Pathname;
    UINT32                  OriginalLineNumber;


    /* Build the full pathname to the file */

    Pathname = FUNC4 (PrefixDir, Filename);

    FUNC2 (ASL_PARSE_OUTPUT, "Include: Opening file - \"%s\"\n\n",
        Pathname);

    /* Attempt to open the file, push if successful */

    IncludeFile = FUNC5 (Pathname, "r");
    if (!IncludeFile)
    {
        return (NULL);
    }

    /*
     * Check the entire include file for any # preprocessor directives.
     * This is because there may be some confusion between the #include
     * preprocessor directive and the ASL Include statement. A file included
     * by the ASL include cannot contain preprocessor directives because
     * the preprocessor has already run by the time the ASL include is
     * recognized (by the compiler, not the preprocessor.)
     *
     * Note: DtGetNextLine strips/ignores comments.
     * Save current line number since DtGetNextLine modifies it.
     */
    AslGbl_CurrentLineNumber--;
    OriginalLineNumber = AslGbl_CurrentLineNumber;

    while (FUNC3 (IncludeFile, DT_ALLOW_MULTILINE_QUOTES) != ASL_EOF)
    {
        if (AslGbl_CurrentLineBuffer[0] == '#')
        {
            FUNC0 (ASL_ERROR, ASL_MSG_INCLUDE_FILE,
                Op, "use #include instead");
        }
    }

    AslGbl_CurrentLineNumber = OriginalLineNumber;

    /* Must seek back to the start of the file */

    FUNC6 (IncludeFile, 0, SEEK_SET);

    /* Push the include file on the open input file stack */

    FUNC1 (IncludeFile, Pathname);
    return (IncludeFile);
}