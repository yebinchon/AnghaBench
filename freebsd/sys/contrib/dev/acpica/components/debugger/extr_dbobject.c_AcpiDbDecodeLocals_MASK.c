#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_10__ {scalar_t__ Type; } ;
struct TYPE_9__ {TYPE_1__* LocalVariables; TYPE_3__* MethodNode; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Object; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  TYPE_3__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 size_t ACPI_METHOD_NUM_LOCALS ; 
 scalar_t__ ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_3__* AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 

void
FUNC3 (
    ACPI_WALK_STATE         *WalkState)
{
    UINT32                  i;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_NAMESPACE_NODE     *Node;
    BOOLEAN                 DisplayLocals = FALSE;


    Node = WalkState->MethodNode;

    /* There are no locals for the module-level code case */

    if (Node == AcpiGbl_RootNode)
    {
        return;
    }

    if (!Node)
    {
        FUNC1 (
            "No method node (Executing subtree for buffer or opregion)\n");
        return;
    }

    if (Node->Type != ACPI_TYPE_METHOD)
    {
        FUNC1 ("Executing subtree for Buffer/Package/Region\n");
        return;
    }

    /* Are any locals actually set? */

    for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++)
    {
        ObjDesc = WalkState->LocalVariables[i].Object;
        if (ObjDesc)
        {
            DisplayLocals = TRUE;
            break;
        }
    }

    /* If any are set, only display the ones that are set */

    if (DisplayLocals)
    {
        FUNC1 ("\nInitialized Local Variables for Method [%4.4s]:\n",
            FUNC2 (Node));

        for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++)
        {
            ObjDesc = WalkState->LocalVariables[i].Object;
            if (ObjDesc)
            {
                FUNC1 ("    Local%X: ", i);
                FUNC0 (ObjDesc, WalkState);
            }
        }
    }
    else
    {
        FUNC1 (
            "No Local Variables are initialized for Method [%4.4s]\n",
            FUNC2 (Node));
    }
}