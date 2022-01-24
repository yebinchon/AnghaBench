#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {int /*<<< orphan*/  Filename; int /*<<< orphan*/  File; struct TYPE_9__* Parent; } ;
struct TYPE_7__ {char* CvFilename; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  TYPE_3__ ACPI_FILE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 int /*<<< orphan*/  ASL_MSG_OPEN ; 
 int /*<<< orphan*/  AcpiGbl_CurrentFilename ; 
 int /*<<< orphan*/  AcpiGbl_FileTreeRoot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(
    UINT32                  Level,
    ACPI_PARSE_OBJECT       *Op)
{
    char                    *Filename = Op->Common.CvFilename;
    ACPI_FILE_NODE          *FNode;
    ACPI_FILE_NODE          *Current;


    FUNC4 ("Switching from %s to %s\n", AcpiGbl_CurrentFilename,
        Filename);
    FNode = FUNC5 (Filename, AcpiGbl_FileTreeRoot);
    if (!FNode)
    {
        /*
         * At this point, each Filename should exist in AcpiGbl_FileTreeRoot
         * if it does not exist, then abort.
         */
        FUNC7 (ASL_FILE_AML_OUTPUT);
        FUNC8 (AslGbl_MsgBuffer, "\"Cannot find %s\" - %s",
            Filename, FUNC9 (errno));
        FUNC3 (ASL_ERROR, ASL_MSG_OPEN, 0, 0, 0, 0,
            NULL, AslGbl_MsgBuffer);
        FUNC2 ();
    }

    Current = FNode;

    /*
     * If the previous file is a descendent of the current file,
     * make sure that Include statements from the current file
     * to the previous have been emitted.
     */
    while (Current &&
           Current->Parent &&
           FUNC1 (Current->Filename, AcpiGbl_CurrentFilename))
    {
        FUNC6 (Current, Level);
        Current = Current->Parent;
    }

    if (FNode)
    {
        /* Redirect output to Op->Common.CvFilename */

        FUNC0 (FNode->File);
        AcpiGbl_CurrentFilename = FNode->Filename;
    }
}