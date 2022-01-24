#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_23__ {int /*<<< orphan*/  ReturnObject; int /*<<< orphan*/  Parameters; } ;
struct TYPE_22__ {int /*<<< orphan*/  Type; } ;
struct TYPE_18__ {TYPE_5__* Node; TYPE_4__* Parent; } ;
struct TYPE_21__ {TYPE_1__ Common; } ;
struct TYPE_20__ {TYPE_5__* StartNode; TYPE_4__* StartOp; int /*<<< orphan*/ * PkgEnd; int /*<<< orphan*/ * AmlEnd; int /*<<< orphan*/ * AmlStart; int /*<<< orphan*/ * Aml; } ;
struct TYPE_19__ {int /*<<< orphan*/  Params; int /*<<< orphan*/  MethodDesc; TYPE_5__* MethodNode; int /*<<< orphan*/  WalkType; TYPE_3__ ParserState; int /*<<< orphan*/ * CallerReturnDesc; int /*<<< orphan*/  PassNumber; int /*<<< orphan*/ * NextOp; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_STATE ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;
typedef  TYPE_5__ ACPI_NAMESPACE_NODE ;
typedef  TYPE_6__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_METHOD_NUM_ARGS ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  ACPI_WALK_METHOD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  DsInitAmlWalk ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op,
    ACPI_NAMESPACE_NODE     *MethodNode,
    UINT8                   *AmlStart,
    UINT32                  AmlLength,
    ACPI_EVALUATE_INFO      *Info,
    UINT8                   PassNumber)
{
    ACPI_STATUS             Status;
    ACPI_PARSE_STATE        *ParserState = &WalkState->ParserState;
    ACPI_PARSE_OBJECT       *ExtraOp;


    FUNC1 (DsInitAmlWalk);


    WalkState->ParserState.Aml =
    WalkState->ParserState.AmlStart = AmlStart;
    WalkState->ParserState.AmlEnd =
    WalkState->ParserState.PkgEnd = AmlStart + AmlLength;

    /* The NextOp of the NextWalk will be the beginning of the method */

    WalkState->NextOp = NULL;
    WalkState->PassNumber = PassNumber;

    if (Info)
    {
        WalkState->Params = Info->Parameters;
        WalkState->CallerReturnDesc = &Info->ReturnObject;
    }

    Status = FUNC6 (&WalkState->ParserState, Op);
    if (FUNC0 (Status))
    {
        FUNC7 (Status);
    }

    if (MethodNode)
    {
        WalkState->ParserState.StartNode = MethodNode;
        WalkState->WalkType = ACPI_WALK_METHOD;
        WalkState->MethodNode = MethodNode;
        WalkState->MethodDesc = FUNC5 (MethodNode);

        /* Push start scope on scope stack and make it current  */

        Status = FUNC4 (
            MethodNode, ACPI_TYPE_METHOD, WalkState);
        if (FUNC0 (Status))
        {
            FUNC7 (Status);
        }

        /* Init the method arguments */

        Status = FUNC3 (WalkState->Params,
                    ACPI_METHOD_NUM_ARGS, WalkState);
        if (FUNC0 (Status))
        {
            FUNC7 (Status);
        }
    }
    else
    {
        /*
         * Setup the current scope.
         * Find a Named Op that has a namespace node associated with it.
         * search upwards from this Op. Current scope is the first
         * Op with a namespace node.
         */
        ExtraOp = ParserState->StartOp;
        while (ExtraOp && !ExtraOp->Common.Node)
        {
            ExtraOp = ExtraOp->Common.Parent;
        }

        if (!ExtraOp)
        {
            ParserState->StartNode = NULL;
        }
        else
        {
            ParserState->StartNode = ExtraOp->Common.Node;
        }

        if (ParserState->StartNode)
        {
            /* Push start scope on scope stack and make it current  */

            Status = FUNC4 (ParserState->StartNode,
                ParserState->StartNode->Type, WalkState);
            if (FUNC0 (Status))
            {
                FUNC7 (Status);
            }
        }
    }

    Status = FUNC2 (WalkState, PassNumber);
    FUNC7 (Status);
}