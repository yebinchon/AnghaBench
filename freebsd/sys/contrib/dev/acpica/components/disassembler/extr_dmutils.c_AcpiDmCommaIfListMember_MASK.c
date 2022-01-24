#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int DisasmFlags; TYPE_3__* Next; int /*<<< orphan*/  OperatorSymbol; int /*<<< orphan*/  Parent; } ;
struct TYPE_12__ {TYPE_4__ Common; } ;
struct TYPE_8__ {int /*<<< orphan*/  String; } ;
struct TYPE_9__ {int DisasmFlags; scalar_t__ AmlOpcode; int /*<<< orphan*/  Next; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Common; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  TYPE_5__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int ACPI_PARSEOP_IGNORE ; 
 int ACPI_PARSEOP_PARAMETER_LIST ; 
 int /*<<< orphan*/  AMLCOMMENT_INLINE ; 
 scalar_t__ AML_INT_NAMEPATH_OP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int BLOCK_COMMA_LIST ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN
FUNC3 (
    ACPI_PARSE_OBJECT       *Op)
{

    if (!Op->Common.Next)
    {
        FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);
        return (FALSE);
    }

    if (FUNC1 (Op->Common.Parent) & BLOCK_COMMA_LIST)
    {
        /* Exit if Target has been marked IGNORE */

        if (Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_IGNORE)
        {
            FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);
            return (FALSE);
        }

        /* Check for a NULL target operand */

        if ((Op->Common.Next->Common.AmlOpcode == AML_INT_NAMEPATH_OP) &&
            (!Op->Common.Next->Common.Value.String))
        {
            /*
             * To handle the Divide() case where there are two optional
             * targets, look ahead one more op. If null, this null target
             * is the one and only target -- no comma needed. Otherwise,
             * we need a comma to prepare for the next target.
             */
            if (!Op->Common.Next->Common.Next)
            {
                FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);
                return (FALSE);
            }
        }

        if ((Op->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST) &&
            (!(Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST)))
        {
            FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);
            return (FALSE);
        }

        /* Emit comma only if this is not a C-style operator */

        if (!Op->Common.OperatorSymbol)
        {
            FUNC2 (", ");
            FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);
        }

        return (TRUE);
    }

    else if ((Op->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST) &&
             (Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST))
    {
        FUNC2 (", ");
        FUNC0 (Op, AMLCOMMENT_INLINE, NULL, 0);

        return (TRUE);
    }

    return (FALSE);
}