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

/* Variables and functions */
 scalar_t__ ASL_FILE_ASM_INCLUDE_OUTPUT ; 
 scalar_t__ ASL_FILE_C_INCLUDE_OUTPUT ; 
 scalar_t__ ASL_FILE_C_SOURCE_OUTPUT ; 
 scalar_t__ ASL_FILE_LISTING_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ AslGbl_CurrentAmlOffset ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (
    UINT32                  FileId)
{

    if ((FileId == ASL_FILE_ASM_INCLUDE_OUTPUT) ||
        (FileId == ASL_FILE_C_INCLUDE_OUTPUT))
    {
        return;
    }

    FUNC2 (FileId);
    AslGbl_CurrentAmlOffset = 0;

    /* Flush any remaining text in the source file */

    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FUNC1 (FileId, "    /*\n");
    }

    while (FUNC3 (FileId))
    { ; }

    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FUNC1 (FileId, "\n     */\n    };\n");
    }

    FUNC1 (FileId, "\n");

    if (FileId == ASL_FILE_LISTING_OUTPUT)
    {
        /* Print a summary of the compile exceptions */

        FUNC1 (FileId, "\n\nSummary of errors and warnings\n\n");
        FUNC0 (FileId);
        FUNC1 (FileId, "\n");
        FUNC4 (FileId, TRUE);
        FUNC1 (FileId, "\n");
    }
}