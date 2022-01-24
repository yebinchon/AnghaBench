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
typedef  size_t UINT32 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,char*) ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_ROOT_PATHNAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AcpiGbl_EnableInterpreterSlack ; 
 scalar_t__ FUNC5 (char,size_t) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UtRepairName ; 

void
FUNC6 (
    char                    *Name)
{
    UINT32                  i;
    BOOLEAN                 FoundBadChar = FALSE;
    UINT32                  OriginalName;


    FUNC3 (UtRepairName);


    /*
     * Special case for the root node. This can happen if we get an
     * error during the execution of module-level code.
     */
    if (FUNC0 (Name, ACPI_ROOT_PATHNAME))
    {
        return;
    }

    FUNC1 (&OriginalName, Name);

    /* Check each character in the name */

    for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
    {
        if (FUNC5 (Name[i], i))
        {
            continue;
        }

        /*
         * Replace a bad character with something printable, yet technically
         * still invalid. This prevents any collisions with existing "good"
         * names in the namespace.
         */
        Name[i] = '*';
        FoundBadChar = TRUE;
    }

    if (FoundBadChar)
    {
        /* Report warning only if in strict mode or debug mode */

        if (!AcpiGbl_EnableInterpreterSlack)
        {
            FUNC4 ((AE_INFO,
                "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
                OriginalName, Name));
        }
        else
        {
            FUNC2 ((ACPI_DB_INFO,
                "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
                OriginalName, Name));
        }
    }
}