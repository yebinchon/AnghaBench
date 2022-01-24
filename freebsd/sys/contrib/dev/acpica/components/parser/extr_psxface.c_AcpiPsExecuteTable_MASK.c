#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  Node; TYPE_2__* ObjDesc; int /*<<< orphan*/  FullPathname; int /*<<< orphan*/  PassNumber; } ;
struct TYPE_14__ {int /*<<< orphan*/  ParseFlags; int /*<<< orphan*/  MethodIsNested; int /*<<< orphan*/  MethodPathname; } ;
struct TYPE_12__ {int InfoFlags; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  AmlStart; int /*<<< orphan*/  OwnerId; } ;
struct TYPE_13__ {TYPE_1__ Method; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;
typedef  TYPE_4__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_METHOD_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_PARSE_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PsExecuteTable ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC12 (
    ACPI_EVALUATE_INFO      *Info)
{
    ACPI_STATUS             Status;
    ACPI_PARSE_OBJECT       *Op = NULL;
    ACPI_WALK_STATE         *WalkState = NULL;


    FUNC1 (PsExecuteTable);


    /* Create and init a Root Node */

    Op = FUNC8 (Info->ObjDesc->Method.AmlStart);
    if (!Op)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    /* Create and initialize a new walk state */

    WalkState = FUNC2 (
        Info->ObjDesc->Method.OwnerId, NULL, NULL, NULL);
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Status = FUNC4 (WalkState, Op, Info->Node,
        Info->ObjDesc->Method.AmlStart,
        Info->ObjDesc->Method.AmlLength, Info, Info->PassNumber);
    if (FUNC0 (Status))
    {
        goto Cleanup;
    }

    WalkState->MethodPathname = Info->FullPathname;
    WalkState->MethodIsNested = FALSE;

    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL)
    {
        WalkState->ParseFlags |= ACPI_PARSE_MODULE_LEVEL;
    }

    /* Info->Node is the default location to load the table  */

    if (Info->Node && Info->Node != AcpiGbl_RootNode)
    {
        Status = FUNC5 (
            Info->Node, ACPI_TYPE_METHOD, WalkState);
        if (FUNC0 (Status))
        {
            goto Cleanup;
        }
    }

    /*
     * Parse the AML, WalkState will be deleted by ParseAml
     */
    FUNC6 ();
    Status = FUNC10 (WalkState);
    FUNC7 ();
    WalkState = NULL;

Cleanup:
    if (WalkState)
    {
        FUNC3 (WalkState);
    }
    if (Op)
    {
        FUNC9 (Op);
    }
    FUNC11 (Status);
}