#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char UINT8 ;
typedef  int UINT32 ;
struct TYPE_4__ {int Line; scalar_t__ Offset; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_1__ ASL_FILE_STATUS ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  AE_BAD_CHARACTER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_NON_ASCII ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC12 (
    char                    *Filename,
    BOOLEAN                 DisplayErrors)
{
    UINT8                   Byte;
    UINT32                  BadBytes = 0;
    BOOLEAN                 OpeningComment = FALSE;
    ASL_FILE_STATUS         Status;
    FILE                    *Handle;


    /* Open file in text mode so file offset is always accurate */

    Handle = FUNC6 (Filename, "rb");
    if (!Handle)
    {
        FUNC11 ("Could not open input file");
        return (AE_ERROR);
    }

    Status.Line = 1;
    Status.Offset = 0;

    /* Read the entire file */

    while (FUNC8 (&Byte, 1, 1, Handle) == 1)
    {
        /* Ignore comment fields (allow non-ascii within) */

        if (OpeningComment)
        {
            /* Check for second comment open delimiter */

            if (Byte == '*')
            {
                FUNC3 (Handle, &Status);
            }

            if (Byte == '/')
            {
                FUNC4 (Handle, &Status);
            }

            /* Reset */

            OpeningComment = FALSE;
        }
        else if (Byte == '/')
        {
            OpeningComment = TRUE;
        }

        /* Check for an ASCII character */

        if (!FUNC0 (Byte))
        {
            if ((BadBytes < 10) && (DisplayErrors))
            {
                FUNC1 (
                    "Found non-ASCII character in source text: "
                    "0x%2.2X in line %u, file offset 0x%2.2X\n",
                    Byte, Status.Line, Status.Offset);
            }
            BadBytes++;
        }

        /* Ensure character is either printable or a "space" char */

        else if (!FUNC9 (Byte) && !FUNC10 (Byte))
        {
            if ((BadBytes < 10) && (DisplayErrors))
            {
                FUNC1 (
                    "Found invalid character in source text: "
                    "0x%2.2X in line %u, file offset 0x%2.2X\n",
                    Byte, Status.Line, Status.Offset);
            }
            BadBytes++;
        }

        /* Update line counter as necessary */

        if (Byte == 0x0A)
        {
            Status.Line++;
        }

        Status.Offset++;
    }

    FUNC5 (Handle);

    /* Were there any non-ASCII characters in the file? */

    if (BadBytes)
    {
        FUNC7 (stderr,
            "File appears to be binary: found %u non-ASCII characters, disassembling\n",
            BadBytes);
        if (DisplayErrors)
        {
            FUNC1 (
                "Total %u invalid characters found in input source text, "
                "could be a binary file\n", BadBytes);
            FUNC2 (ASL_ERROR, ASL_MSG_NON_ASCII, NULL, Filename);
        }

        return (AE_BAD_CHARACTER);
    }

    /* File is OK (100% ASCII) */

    return (AE_OK);
}