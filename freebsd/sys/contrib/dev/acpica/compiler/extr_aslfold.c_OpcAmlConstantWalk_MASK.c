#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_15__ {int CompileFlags; } ;
struct TYPE_17__ {TYPE_1__ Asl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * Params; int /*<<< orphan*/ * NextOp; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
#define  AE_CTRL_RETURN_VALUE 130 
 int AE_NO_MEMORY ; 
#define  AE_OK 129 
#define  AE_TYPE 128 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_CONSTANT_EVALUATION ; 
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_DOWNWARD ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int OP_COMPILE_TIME_CONST ; 
 int OP_IS_TARGET ; 
 int /*<<< orphan*/  OpcAmlCheckForConstant ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

ACPI_STATUS
FUNC10 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{
    ACPI_WALK_STATE         *WalkState;
    ACPI_STATUS             Status = AE_OK;


    if (Op->Asl.CompileFlags == 0)
    {
        return (AE_OK);
    }

    /*
     * Only interested in subtrees that could possibly contain
     * expressions that can be evaluated at this time
     */
    if ((!(Op->Asl.CompileFlags & OP_COMPILE_TIME_CONST)) ||
          (Op->Asl.CompileFlags & OP_IS_TARGET))
    {
        return (AE_OK);
    }

    /* Create a new walk state */

    WalkState = FUNC1 (0, NULL, NULL, NULL);
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    WalkState->NextOp = NULL;
    WalkState->Params = NULL;

    /*
     * Examine the entire subtree -- all nodes must be constants
     * or type 3/4/5 opcodes
     */
    Status = FUNC9 (Op, ASL_WALK_VISIT_DOWNWARD,
        OpcAmlCheckForConstant, NULL, WalkState);

    /*
     * Did we find an entire subtree that contains all constants
     * and type 3/4/5 opcodes?
     */
    switch (Status)
    {
    case AE_OK:

        /* Simple case, like Add(3,4) -> 7 */

        Status = FUNC7 (Op, WalkState);
        break;

    case AE_CTRL_RETURN_VALUE:

        /* More complex case, like Add(3,4,Local0) -> Store(7,Local0) */

        Status = FUNC8 (Op, WalkState);
        break;

    case AE_TYPE:

        FUNC2 (WalkState);
        return (AE_OK);

    default:
        FUNC2 (WalkState);
        break;
    }

    if (FUNC0 (Status))
    {
        FUNC5 (ASL_PARSE_OUTPUT, "Cannot resolve, %s\n",
            FUNC3 (Status));

        /* We could not resolve the subtree for some reason */

        FUNC4 (ASL_ERROR, ASL_MSG_CONSTANT_EVALUATION, Op,
            (char *) FUNC3 (Status));

        /* Set the subtree value to ZERO anyway. Eliminates further errors */

        FUNC6 (Op, 0);
    }

    return (AE_OK);
}