#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/ * Object; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsMethodDataDeleteValue ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC6 (
    UINT8                   Type,
    UINT32                  Index,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_OPERAND_OBJECT     *Object;


    FUNC1 (DsMethodDataDeleteValue);


    /* Get the namespace node for the arg/local */

    Status = FUNC3 (Type, Index, WalkState, &Node);
    if (FUNC0 (Status))
    {
        return_VOID;
    }

    /* Get the associated object */

    Object = FUNC4 (Node);

    /*
     * Undefine the Arg or Local by setting its descriptor
     * pointer to NULL. Locals/Args can contain both
     * ACPI_OPERAND_OBJECTS and ACPI_NAMESPACE_NODEs
     */
    Node->Object = NULL;

    if ((Object) &&
        (FUNC2 (Object) == ACPI_DESC_TYPE_OPERAND))
    {
        /*
         * There is a valid object.
         * Decrement the reference count by one to balance the
         * increment when the object was stored.
         */
        FUNC5 (Object);
    }

    return_VOID;
}