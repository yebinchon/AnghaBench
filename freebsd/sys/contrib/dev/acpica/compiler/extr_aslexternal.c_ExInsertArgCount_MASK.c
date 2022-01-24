#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ Integer; int /*<<< orphan*/  String; } ;
struct TYPE_7__ {int CompileFlags; TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  Node; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_COMPILER_INTERNAL ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* AslGbl_ExternalsListHead ; 
 int OP_VISITED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_PARSE_OBJECT       *Next;
    ACPI_PARSE_OBJECT       *NameOp;
    ACPI_PARSE_OBJECT       *Child;
    ACPI_PARSE_OBJECT       *ArgCountOp;
    char *                  ExternalName;
    char *                  CallName;
    UINT16                  ArgCount = 0;
    ACPI_STATUS             Status;


    CallName = FUNC2 (Op->Asl.Node, TRUE);

    Next = AslGbl_ExternalsListHead;
    while (Next)
    {
        ArgCount = 0;

        /* Skip if External node already handled */

        if (Next->Asl.Child->Asl.CompileFlags & OP_VISITED)
        {
            Next = Next->Asl.Next;
            continue;
        }

        NameOp = Next->Asl.Child->Asl.Child;
        ExternalName = FUNC2 (NameOp->Asl.Node, TRUE);

        if (FUNC5 (CallName, ExternalName))
        {
            FUNC1 (ExternalName);
            Next = Next->Asl.Next;
            continue;
        }

        Next->Asl.Child->Asl.CompileFlags |= OP_VISITED;

        /*
         * Since we will reposition Externals to the Root, set Namepath
         * to the fully qualified name and recalculate the aml length
         */
        Status = FUNC4 (ExternalName,
            &NameOp->Asl.Value.String);

        FUNC1 (ExternalName);
        if (FUNC0 (Status))
        {
            FUNC3 (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL,
                NULL, "- Could not Internalize External");
            break;
        }

        NameOp->Asl.AmlLength = FUNC6 (NameOp->Asl.Value.String);

        /* Get argument count */

        Child = Op->Asl.Child;
        while (Child)
        {
            ArgCount++;
            Child = Child->Asl.Next;
        }

        /* Setup ArgCount operand */

        ArgCountOp = Next->Asl.Child->Asl.Child->Asl.Next->Asl.Next;
        ArgCountOp->Asl.Value.Integer = ArgCount;
        break;
    }

    FUNC1 (CallName);
}