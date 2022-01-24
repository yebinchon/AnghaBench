#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Integer; } ;
struct TYPE_8__ {scalar_t__ Flags; int /*<<< orphan*/ * Object; int /*<<< orphan*/ * Peer; int /*<<< orphan*/ * Child; int /*<<< orphan*/ * Parent; int /*<<< orphan*/  Type; int /*<<< orphan*/  DescriptorType; TYPE_1__ Name; } ;
struct TYPE_7__ {struct TYPE_7__* Next; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;
typedef  TYPE_2__ ACPI_COMMENT_ADDR_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_NAME ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* AcpiGbl_CommentAddrListHead ; 
 int /*<<< orphan*/ * AcpiGbl_ParseOpRoot ; 
 int /*<<< orphan*/ * AcpiGbl_RootNode ; 
 TYPE_4__ AcpiGbl_RootNodeStruct ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AslCompilerdebug ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static ACPI_STATUS
FUNC16 (
    ACPI_TABLE_HEADER       *Table,
    FILE                    *File,
    ACPI_OWNER_ID           OwnerId)
{
    ACPI_STATUS             Status;
    ACPI_COMMENT_ADDR_NODE  *AddrListHead;


    FUNC15 (stderr,
        "\nFound %u external control methods, "
        "reparsing with new information\n",
        FUNC5 ());

    /* Reparse, rebuild namespace */

    FUNC11 (AcpiGbl_ParseOpRoot);
    AcpiGbl_ParseOpRoot = NULL;
    FUNC7 (AcpiGbl_RootNode);

    AcpiGbl_RootNode                    = NULL;
    AcpiGbl_RootNodeStruct.Name.Integer = ACPI_ROOT_NAME;
    AcpiGbl_RootNodeStruct.DescriptorType = ACPI_DESC_TYPE_NAMED;
    AcpiGbl_RootNodeStruct.Type         = ACPI_TYPE_DEVICE;
    AcpiGbl_RootNodeStruct.Parent       = NULL;
    AcpiGbl_RootNodeStruct.Child        = NULL;
    AcpiGbl_RootNodeStruct.Peer         = NULL;
    AcpiGbl_RootNodeStruct.Object       = NULL;
    AcpiGbl_RootNodeStruct.Flags        = 0;

    Status = FUNC8 ();
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* New namespace, add the external definitions first */

    FUNC1 ();

    /* For -ca option: clear the list of comment addresses. */

    while (AcpiGbl_CommentAddrListHead)
    {
        AddrListHead= AcpiGbl_CommentAddrListHead;
        AcpiGbl_CommentAddrListHead = AcpiGbl_CommentAddrListHead->Next;
        FUNC9(AddrListHead);
    }

    /* Parse the table again. No need to reload it, however */

    Status = FUNC12 (Table, NULL, FALSE, FALSE);
    if (FUNC0 (Status))
    {
        FUNC10 ("Could not parse ACPI tables, %s\n",
            FUNC6 (Status));
        return (Status);
    }

    /* Cross reference the namespace again */

    FUNC4 (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    FUNC2 (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    /* Debug output - namespace and parse tree */

    if (AslCompilerdebug)
    {
        FUNC10 ("/**** After second load and resource conversion\n");
        if (File)
        {
            FUNC14 (File);
            FUNC13 ();
        }

        FUNC10 ("*****/\n");
        FUNC3 (AcpiGbl_ParseOpRoot);
    }

    return (AE_OK);
}