#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_14__ {TYPE_4__* Op; int /*<<< orphan*/  Type; } ;
struct TYPE_12__ {scalar_t__ ParseOpcode; int CompileFlags; scalar_t__ AcpiBtype; TYPE_2__* Parent; int /*<<< orphan*/  ExternalName; int /*<<< orphan*/  LineNumber; int /*<<< orphan*/  ParseOpName; TYPE_5__* Node; } ;
struct TYPE_13__ {TYPE_3__ Asl; } ;
struct TYPE_10__ {scalar_t__ ParseOpcode; int /*<<< orphan*/  ParseOpName; } ;
struct TYPE_11__ {TYPE_1__ Asl; } ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;
typedef  TYPE_5__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_COMPILER_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OP_METHOD_TYPED ; 
 scalar_t__ PARSEOP_CONDREFOF ; 
 scalar_t__ PARSEOP_CREATEBITFIELD ; 
 scalar_t__ PARSEOP_CREATEBYTEFIELD ; 
 scalar_t__ PARSEOP_CREATEDWORDFIELD ; 
 scalar_t__ PARSEOP_CREATEFIELD ; 
 scalar_t__ PARSEOP_CREATEQWORDFIELD ; 
 scalar_t__ PARSEOP_CREATEWORDFIELD ; 
 scalar_t__ PARSEOP_METHODCALL ; 
 scalar_t__ PARSEOP_NAMESEG ; 
 scalar_t__ PARSEOP_NAMESTRING ; 

UINT32
FUNC6 (
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_PARSE_OBJECT       *ReferencedNode;
    UINT32                  ThisNodeBtype = 0;


    if (!Op)
    {
        FUNC0 ("Null Op in AnGetBtype\n");
        return (ACPI_UINT32_MAX);
    }

    if ((Op->Asl.ParseOpcode == PARSEOP_NAMESEG)     ||
        (Op->Asl.ParseOpcode == PARSEOP_NAMESTRING)  ||
        (Op->Asl.ParseOpcode == PARSEOP_METHODCALL))
    {
        Node = Op->Asl.Node;
        if (!Node)
        {
            /* These are not expected to have a node at this time */

            if ((Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEWORDFIELD) ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEDWORDFIELD) ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEQWORDFIELD) ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEBYTEFIELD) ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEBITFIELD) ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CREATEFIELD)    ||
                (Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_CONDREFOF))
            {
                return (ACPI_UINT32_MAX - 1);
            }

            FUNC5 (ASL_DEBUG_OUTPUT,
                "No attached Nsnode: [%s] at line %u name [%s], "
                "ignoring typecheck. Parent [%s]\n",
                Op->Asl.ParseOpName, Op->Asl.LineNumber,
                Op->Asl.ExternalName, Op->Asl.Parent->Asl.ParseOpName);
            return (ACPI_UINT32_MAX - 1);
        }

        ThisNodeBtype = FUNC3 (Node->Type);
        if (!ThisNodeBtype)
        {
            FUNC4 (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
                "could not map type");
        }

        if (Op->Asl.ParseOpcode == PARSEOP_METHODCALL)
        {
            ReferencedNode = Node->Op;
            if (!ReferencedNode)
            {
                /* Check for an internal method */

                if (FUNC2 (Op))
                {
                    return (FUNC1 (Op));
                }

                FUNC4 (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
                    "null Op pointer");
                return (ACPI_UINT32_MAX);
            }

            if (ReferencedNode->Asl.CompileFlags & OP_METHOD_TYPED)
            {
                ThisNodeBtype = ReferencedNode->Asl.AcpiBtype;
            }
            else
            {
                return (ACPI_UINT32_MAX -1);
            }
        }
    }
    else
    {
        ThisNodeBtype = Op->Asl.AcpiBtype;
    }

    return (ThisNodeBtype);
}