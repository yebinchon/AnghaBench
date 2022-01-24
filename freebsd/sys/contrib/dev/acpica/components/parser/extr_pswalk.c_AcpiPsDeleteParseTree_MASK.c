#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_11__ {int /*<<< orphan*/  String; } ;
struct TYPE_12__ {TYPE_4__* Parent; TYPE_4__* Next; TYPE_2__ Value; int /*<<< orphan*/  AmlOpcode; } ;
struct TYPE_10__ {scalar_t__ AmlOpcode; } ;
struct TYPE_13__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE_TREES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_LV_PARSE_TREES ; 
 scalar_t__ AML_INT_NAMEPATH_OP ; 
 scalar_t__ AML_STRING_OP ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PsDeleteParseTree ; 
 int /*<<< orphan*/  _COMPONENT ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC7 (
    ACPI_PARSE_OBJECT       *SubtreeRoot)
{
    ACPI_PARSE_OBJECT       *Op = SubtreeRoot;
    ACPI_PARSE_OBJECT       *Next = NULL;
    ACPI_PARSE_OBJECT       *Parent = NULL;
    UINT32                  Level = 0;


    FUNC1 (PsDeleteParseTree, SubtreeRoot);

    FUNC0 ((ACPI_DB_PARSE_TREES,
        " root %p\n", SubtreeRoot));

    /* Visit all nodes in the subtree */

    while (Op)
    {
        if (Op != Parent)
        {
            /* This is the descending case */

            if (FUNC2 (ACPI_LV_PARSE_TREES, _COMPONENT))
            {
                /* This debug option will print the entire parse tree */

                FUNC3 ("        %*.s%s %p", (Level * 4), " ",
                    FUNC6 (Op->Common.AmlOpcode), Op);

                if (Op->Named.AmlOpcode == AML_INT_NAMEPATH_OP)
                {
                    FUNC3 ("    %4.4s", Op->Common.Value.String);
                }
                if (Op->Named.AmlOpcode == AML_STRING_OP)
                {
                    FUNC3 ("    %s", Op->Common.Value.String);
                }
                FUNC3 ("\n");
            }

            /* Look for an argument or child of the current op */

            Next = FUNC5 (Op, 0);
            if (Next)
            {
                /* Still going downward in tree (Op is not completed yet) */

                Op = Next;
                Level++;
                continue;
            }
        }

        /* No more children, this Op is complete. */

        Next = Op->Common.Next;
        Parent = Op->Common.Parent;

        FUNC4 (Op);

        /* If we are back to the starting point, the walk is complete. */

        if (Op == SubtreeRoot)
        {
            return_VOID;
        }

        if (Next)
        {
            Op = Next;
        }
        else
        {
            Level--;
            Op = Parent;
        }
    }

    return_VOID;
}