#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_3__ {int /*<<< orphan*/  Handle; int /*<<< orphan*/  Filename; } ;
typedef  TYPE_1__ ASL_FILE_INFO ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASL_INPUT_TYPE_ASCII_ASL ; 
 int /*<<< orphan*/  ASL_INPUT_TYPE_ASCII_DATA ; 
 int /*<<< orphan*/  ASL_INPUT_TYPE_BINARY ; 
 int /*<<< orphan*/  ASL_INPUT_TYPE_BINARY_ACPI_TABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* AslGbl_CurrentLineBuffer ; 
 int /*<<< orphan*/  AslGbl_LineBufferSize ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static UINT8
FUNC8 (
    ASL_FILE_INFO           *Info)
{
    char                    *FileChar;
    UINT8                   Type = ASL_INPUT_TYPE_ASCII_DATA; /* default */
    ACPI_STATUS             Status;


    /* Check for 100% ASCII source file (comments are ignored) */

    Status = FUNC2 (Info->Filename, FALSE);
    if (FUNC0 (Status))
    {
        /*
         * File contains ASCII source code. Determine if this is an ASL
         * file or an ACPI data table file.
         */
        while (FUNC3 (AslGbl_CurrentLineBuffer, AslGbl_LineBufferSize, Info->Handle))
        {
            /* Uppercase the buffer for caseless compare */

            FileChar = AslGbl_CurrentLineBuffer;
            while (*FileChar)
            {
                *FileChar = (char) FUNC7 ((int) *FileChar);
                FileChar++;
            }

            /* Presence of "DefinitionBlock" indicates actual ASL code */

            if (FUNC6 (AslGbl_CurrentLineBuffer, "DEFINITIONBLOCK"))
            {
                /* Appears to be an ASL file */

                Type = ASL_INPUT_TYPE_ASCII_ASL;
                goto Cleanup;
            }
        }

        /* Appears to be an ASCII data table source file */

        Type = ASL_INPUT_TYPE_ASCII_DATA;
        goto Cleanup;
    }

    /* We have some sort of binary table, check for valid ACPI table */

    FUNC5 (Info->Handle, 0, SEEK_SET);

    Status = FUNC1 (Info->Handle, 0);
    if (FUNC0 (Status))
    {
        FUNC4 (stderr,
            "Binary file appears to be a valid ACPI table, disassembling\n");

        Type = ASL_INPUT_TYPE_BINARY_ACPI_TABLE;
        goto Cleanup;
    }
    else
    {
        FUNC4 (stderr,
            "Binary file does not contain a valid ACPI table\n");
    }

    Type = ASL_INPUT_TYPE_BINARY;


Cleanup:

    /* Must seek back to the start of the file */

    FUNC5 (Info->Handle, 0, SEEK_SET);
    return (Type);
}