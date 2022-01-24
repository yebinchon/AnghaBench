#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  size_t UINT32 ;
struct TYPE_20__ {scalar_t__ Type; TYPE_5__* Object; } ;
struct TYPE_15__ {size_t Value; } ;
struct TYPE_19__ {TYPE_1__ Integer; } ;
struct TYPE_18__ {TYPE_3__* LocalVariables; TYPE_2__* Arguments; } ;
struct TYPE_17__ {TYPE_5__* Object; } ;
struct TYPE_16__ {TYPE_5__* Object; } ;
typedef  TYPE_4__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_5__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_6__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ACPI_METHOD_MAX_ARG ; 
 size_t ACPI_METHOD_MAX_LOCAL ; 
 int /*<<< orphan*/  ACPI_REFCLASS_ARG ; 
 int /*<<< orphan*/  ACPI_REFCLASS_LOCAL ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 TYPE_6__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  AcpiGbl_CurrentWalkList ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC10 (
    char                    *TypeArg,
    char                    *IndexArg,
    char                    *ValueArg)
{
    char                    Type;
    UINT32                  Index;
    UINT32                  Value;
    ACPI_WALK_STATE         *WalkState;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;


    /* Validate TypeArg */

    FUNC8 (TypeArg);
    Type = TypeArg[0];
    if ((Type != 'L') &&
        (Type != 'A') &&
        (Type != 'N'))
    {
        FUNC5 ("Invalid SET operand: %s\n", TypeArg);
        return;
    }

    Value = FUNC9 (ValueArg, NULL, 16);

    if (Type == 'N')
    {
        Node = FUNC1 (IndexArg);
        if (!Node)
        {
            return;
        }

        if (Node->Type != ACPI_TYPE_INTEGER)
        {
            FUNC5 ("Can only set Integer nodes\n");
            return;
        }
        ObjDesc = Node->Object;
        ObjDesc->Integer.Value = Value;
        return;
    }

    /* Get the index and value */

    Index = FUNC9 (IndexArg, NULL, 16);

    WalkState = FUNC3 (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        FUNC5 ("There is no method currently executing\n");
        return;
    }

    /* Create and initialize the new object */

    ObjDesc = FUNC6 ((UINT64) Value);
    if (!ObjDesc)
    {
        FUNC5 ("Could not create an internal object\n");
        return;
    }

    /* Store the new object into the target */

    switch (Type)
    {
    case 'A':

        /* Set a method argument */

        if (Index > ACPI_METHOD_MAX_ARG)
        {
            FUNC5 ("Arg%u - Invalid argument name\n",
                Index);
            goto Cleanup;
        }

        Status = FUNC4 (ACPI_REFCLASS_ARG,
            Index, ObjDesc, WalkState);
        if (FUNC0 (Status))
        {
            goto Cleanup;
        }

        ObjDesc = WalkState->Arguments[Index].Object;

        FUNC5 ("Arg%u: ", Index);
        FUNC2 (ObjDesc, WalkState);
        break;

    case 'L':

        /* Set a method local */

        if (Index > ACPI_METHOD_MAX_LOCAL)
        {
            FUNC5 ("Local%u - Invalid local variable name\n",
                Index);
            goto Cleanup;
        }

        Status = FUNC4 (ACPI_REFCLASS_LOCAL,
            Index, ObjDesc, WalkState);
        if (FUNC0 (Status))
        {
            goto Cleanup;
        }

        ObjDesc = WalkState->LocalVariables[Index].Object;

        FUNC5 ("Local%u: ", Index);
        FUNC2 (ObjDesc, WalkState);
        break;

    default:

        break;
    }

Cleanup:
    FUNC7 (ObjDesc);
}