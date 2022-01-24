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
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/ * Object; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_REFCLASS_ARG 129 
#define  ACPI_REFCLASS_LOCAL 128 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_UNINITIALIZED_ARG ; 
 int /*<<< orphan*/  AE_AML_UNINITIALIZED_LOCAL ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ AcpiGbl_EnableInterpreterSlack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DsMethodDataGetValue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    UINT8                   Type,
    UINT32                  Index,
    ACPI_WALK_STATE         *WalkState,
    ACPI_OPERAND_OBJECT     **DestDesc)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_OPERAND_OBJECT     *Object;


    FUNC2 (DsMethodDataGetValue);


    /* Validate the object descriptor */

    if (!DestDesc)
    {
        FUNC0 ((AE_INFO, "Null object descriptor pointer"));
        FUNC6 (AE_BAD_PARAMETER);
    }

    /* Get the namespace node for the arg/local */

    Status = FUNC3 (Type, Index, WalkState, &Node);
    if (FUNC1 (Status))
    {
        FUNC6 (Status);
    }

    /* Get the object from the node */

    Object = Node->Object;

    /* Examine the returned object, it must be valid. */

    if (!Object)
    {
        /*
         * Index points to uninitialized object.
         * This means that either 1) The expected argument was
         * not passed to the method, or 2) A local variable
         * was referenced by the method (via the ASL)
         * before it was initialized. Either case is an error.
         */

        /* If slack enabled, init the LocalX/ArgX to an Integer of value zero */

        if (AcpiGbl_EnableInterpreterSlack)
        {
            Object = FUNC5 ((UINT64) 0);
            if (!Object)
            {
                FUNC6 (AE_NO_MEMORY);
            }

            Node->Object = Object;
        }

        /* Otherwise, return the error */

        else switch (Type)
        {
        case ACPI_REFCLASS_ARG:

            FUNC0 ((AE_INFO,
                "Uninitialized Arg[%u] at node %p",
                Index, Node));

            FUNC6 (AE_AML_UNINITIALIZED_ARG);

        case ACPI_REFCLASS_LOCAL:
            /*
             * No error message for this case, will be trapped again later to
             * detect and ignore cases of Store(LocalX,LocalX)
             */
            FUNC6 (AE_AML_UNINITIALIZED_LOCAL);

        default:

            FUNC0 ((AE_INFO, "Not a Arg/Local opcode: 0x%X", Type));
            FUNC6 (AE_AML_INTERNAL);
        }
    }

    /*
     * The Index points to an initialized and valid object.
     * Return an additional reference to the object
     */
    *DestDesc = Object;
    FUNC4 (Object);

    FUNC6 (AE_OK);
}