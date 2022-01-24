#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  LineNumber; int /*<<< orphan*/  Filename; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ AE_OK ; 
 int ASL_FILE_ASM_SOURCE_OUTPUT ; 
 int ASL_FILE_C_SOURCE_OUTPUT ; 
 int /*<<< orphan*/  ASL_FILE_SOURCE_OUTPUT ; 
 char* ASL_LISTING_LINE_PREFIX ; 
 scalar_t__ AslGbl_HasIncludeFiles ; 
 TYPE_1__* AslGbl_ListingNode ; 
 int AslGbl_SourceLine ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ TRUE ; 

UINT32
FUNC4 (
    UINT32                  FileId)
{
    UINT8                   FileByte;
    UINT32                  Column = 0;
    UINT32                  Index = 16;
    BOOLEAN                 StartOfLine = FALSE;
    BOOLEAN                 ProcessLongLine = FALSE;


    AslGbl_SourceLine++;
    AslGbl_ListingNode->LineNumber++;

    /* Ignore lines that are completely blank (but count the line above) */

    if (FUNC1 (ASL_FILE_SOURCE_OUTPUT, &FileByte, 1) != AE_OK)
    {
        return (0);
    }
    if (FileByte == '\n')
    {
        return (1);
    }

    /*
     * This is a non-empty line, we will print the entire line with
     * the line number and possibly other prefixes and transforms.
     */

    /* Line prefixes for special files, C and ASM output */

    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FUNC0 (FileId, "     *");
    }
    if (FileId == ASL_FILE_ASM_SOURCE_OUTPUT)
    {
        FUNC0 (FileId, "; ");
    }

    if (AslGbl_HasIncludeFiles)
    {
        /*
         * This file contains "include" statements, print the current
         * filename and line number within the current file
         */
        FUNC0 (FileId, "%12s %5d%s",
            AslGbl_ListingNode->Filename, AslGbl_ListingNode->LineNumber,
            ASL_LISTING_LINE_PREFIX);
    }
    else
    {
        /* No include files, just print the line number */

        FUNC0 (FileId, "%8u%s", AslGbl_SourceLine,
            ASL_LISTING_LINE_PREFIX);
    }

    /* Read the rest of this line (up to a newline or EOF) */

    do
    {
        if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
        {
            if (FileByte == '/')
            {
                FileByte = '*';
            }
        }

        /* Split long input lines for readability in the listing */

        Column++;
        if (Column >= 128)
        {
            if (!ProcessLongLine)
            {
                if ((FileByte != '}') &&
                    (FileByte != '{'))
                {
                    goto WriteByte;
                }

                ProcessLongLine = TRUE;
            }

            if (FileByte == '{')
            {
                FUNC0 (FileId, "\n%*s{\n", Index, " ");
                StartOfLine = TRUE;
                Index += 4;
                continue;
            }

            else if (FileByte == '}')
            {
                if (!StartOfLine)
                {
                    FUNC0 (FileId, "\n");
                }

                StartOfLine = TRUE;
                Index -= 4;
                FUNC0 (FileId, "%*s}\n", Index, " ");
                continue;
            }

            /* Ignore spaces/tabs at the start of line */

            else if ((FileByte == ' ') && StartOfLine)
            {
                continue;
            }

            else if (StartOfLine)
            {
                StartOfLine = FALSE;
                FUNC0 (FileId, "%*s", Index, " ");
            }

WriteByte:
            FUNC2 (FileId, &FileByte, 1);
            if (FileByte == '\n')
            {
                /*
                 * This line has been completed.
                 * Check if an error occurred on this source line during the compile.
                 * If so, we print the error message after the source line.
                 */
                FUNC3 (AslGbl_SourceLine, FileId);
                return (1);
            }
        }
        else
        {
            FUNC2 (FileId, &FileByte, 1);
            if (FileByte == '\n')
            {
                /*
                 * This line has been completed.
                 * Check if an error occurred on this source line during the compile.
                 * If so, we print the error message after the source line.
                 */
                FUNC3 (AslGbl_SourceLine, FileId);
                return (1);
            }
        }

    } while (FUNC1 (ASL_FILE_SOURCE_OUTPUT, &FileByte, 1) == AE_OK);

    /* EOF on the input file was reached */

    return (0);
}