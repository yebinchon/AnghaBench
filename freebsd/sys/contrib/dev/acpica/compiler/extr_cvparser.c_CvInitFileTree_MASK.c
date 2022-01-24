#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int UINT32 ;
struct TYPE_6__ {char* FileStart; char* FileEnd; char* Filename; int /*<<< orphan*/  IncludeWritten; int /*<<< orphan*/  File; int /*<<< orphan*/ * Parent; int /*<<< orphan*/ * Next; } ;
struct TYPE_5__ {int Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 scalar_t__ AML_COMMENT_OP ; 
 int /*<<< orphan*/  AcpiGbl_CaptureComments ; 
 char* AcpiGbl_CurrentFilename ; 
 int /*<<< orphan*/  AcpiGbl_FileCache ; 
 TYPE_3__* AcpiGbl_FileTreeRoot ; 
 int /*<<< orphan*/  AcpiGbl_OutputFile ; 
 char* AcpiGbl_RootFilename ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FILENAME_COMMENT ; 
 scalar_t__ PARENTFILENAME_COMMENT ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC5 (
    ACPI_TABLE_HEADER       *Table,
    UINT8                   *AmlStart,
    UINT32                  AmlLength)
{
    UINT8                   *TreeAml;
    UINT8                   *FileEnd;
    char                    *Filename = NULL;
    char                    *PreviousFilename = NULL;
    char                    *ParentFilename = NULL;
    char                    *ChildFilename = NULL;


    if (!AcpiGbl_CaptureComments)
    {
        return;
    }

    FUNC2 ("AmlLength: %x\n", AmlLength);
    FUNC2 ("AmlStart:  %p\n", AmlStart);
    FUNC2 ("AmlEnd?:   %p\n", AmlStart+AmlLength);

    AcpiGbl_FileTreeRoot = FUNC0 (AcpiGbl_FileCache);

    AcpiGbl_FileTreeRoot->FileStart = (char *)(AmlStart);
    AcpiGbl_FileTreeRoot->FileEnd = (char *)(AmlStart + Table->Length);
    AcpiGbl_FileTreeRoot->Next = NULL;
    AcpiGbl_FileTreeRoot->Parent = NULL;
    AcpiGbl_FileTreeRoot->Filename = (char *)(AmlStart+2);

    /* Set the root file to the current open file */

    AcpiGbl_FileTreeRoot->File = AcpiGbl_OutputFile;

    /*
     * Set this to true because we don't need to output
     * an include statement for the topmost file
     */
    AcpiGbl_FileTreeRoot->IncludeWritten = TRUE;
    Filename = NULL;
    AcpiGbl_CurrentFilename = (char *)(AmlStart+2);
    AcpiGbl_RootFilename    = (char *)(AmlStart+2);

    TreeAml = AmlStart;
    FileEnd = AmlStart + AmlLength;

    while (TreeAml <= FileEnd)
    {
        /*
         * Make sure that this filename contains all printable characters
         * and a .dsl extension at the end. If not, then it must be some
         * raw data that doesn't outline a filename.
         */
        if ((*TreeAml == AML_COMMENT_OP) &&
            (*(TreeAml +1) == FILENAME_COMMENT) &&
            (FUNC3 ((char *)(TreeAml +2))))
        {
            FUNC2 ("A9 and a 08 file\n");
            PreviousFilename = Filename;
            Filename = (char *) (TreeAml +2);

            FUNC1 (Filename, PreviousFilename);
            ChildFilename = Filename;
            FUNC2 ("%s\n", Filename);
        }
        else if ((*TreeAml == AML_COMMENT_OP) &&
            (*(TreeAml +1) == PARENTFILENAME_COMMENT) &&
            (FUNC3 ((char *)(TreeAml +2))))
        {
            FUNC2 ("A9 and a 09 file\n");
            ParentFilename = (char *)(TreeAml +2);
            FUNC4 (ChildFilename, ParentFilename);
            FUNC2 ("%s\n", ParentFilename);
        }

        ++TreeAml;
    }
}