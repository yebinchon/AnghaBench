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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASL_COMPILER_NAME ; 
 int /*<<< orphan*/  AcpiGbl_DisasmFlag ; 
 size_t AcpiGbl_Optind ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ AslGbl_DoSignon ; 
 scalar_t__ AslGbl_DoTemplates ; 
 scalar_t__ AslGbl_IgnoreErrors ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7 (
    int                     argc,
    char                    **argv)
{
    int                     BadCommandLine = 0;
    ACPI_STATUS             Status;


    /* Minimum command line contains at least the command and an input file */

    if (argc < 2)
    {
        FUNC4 ();
        FUNC5 (1);
    }

    /* Process all command line options */

    BadCommandLine = FUNC2 (argc, argv, FALSE);

    if (AslGbl_DoTemplates)
    {
        Status = FUNC3 (argv);
        if (FUNC1 (Status))
        {
            FUNC5 (-1);
        }
        FUNC5 (1);
    }

    /* Next parameter must be the input filename */

    if (!argv[AcpiGbl_Optind] &&
        !AcpiGbl_DisasmFlag)
    {
        FUNC6 ("Missing input filename\n");
        BadCommandLine = TRUE;
    }

    if (AslGbl_DoSignon)
    {
        FUNC6 (FUNC0 (ASL_COMPILER_NAME));
        if (AslGbl_IgnoreErrors)
        {
            FUNC6 ("Ignoring all errors, forcing AML file generation\n\n");
        }
    }

    if (BadCommandLine)
    {
        FUNC6 ("Use -h option for help information\n");
        FUNC5 (1);
    }

    return (AcpiGbl_Optind);
}