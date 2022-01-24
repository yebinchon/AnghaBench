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
typedef  scalar_t__ ACPI_SIZE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

char *
FUNC5 (
    char                    *InputFilename,
    char                    *Suffix)
{
    char                    *Position;
    char                    *NewFilename;
    char                    *DirectoryPosition;


    /*
     * Copy the original filename to a new buffer. Leave room for the worst
     * case where we append the suffix, an added dot and the null terminator.
     */
    NewFilename = FUNC0 ((ACPI_SIZE)
        FUNC3 (InputFilename) + FUNC3 (Suffix) + 2);
    FUNC2 (NewFilename, InputFilename);

    /* Try to find the last dot in the filename */

    DirectoryPosition = FUNC4 (NewFilename, '/');
    Position = FUNC4 (NewFilename, '.');

    if (Position && (Position > DirectoryPosition))
    {
        /* Tack on the new suffix */

        Position++;
        *Position = 0;
        FUNC1 (Position, Suffix);
    }
    else
    {
        /* No dot, add one and then the suffix */

        FUNC1 (NewFilename, ".");
        FUNC1 (NewFilename, Suffix);
    }

    return (NewFilename);
}