#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  Parent; } ;
struct TYPE_13__ {int /*<<< orphan*/  AmlStart; int /*<<< orphan*/  AmlLength; } ;
struct TYPE_15__ {TYPE_5__* Node; } ;
struct TYPE_14__ {int Flags; } ;
struct TYPE_16__ {TYPE_1__ Extra; TYPE_3__ BufferField; TYPE_2__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_5__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER_FIELD ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  DsGetBufferFieldArguments ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_OPERAND_OBJECT     *ExtraDesc;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_STATUS             Status;


    FUNC2 (DsGetBufferFieldArguments, ObjDesc);


    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        FUNC7 (AE_OK);
    }

    /* Get the AML pointer (method object) and BufferField node */

    ExtraDesc = FUNC4 (ObjDesc);
    Node = ObjDesc->BufferField.Node;

    FUNC0 (FUNC5 (
        ACPI_TYPE_BUFFER_FIELD, Node, NULL));

    FUNC1 ((ACPI_DB_EXEC, "[%4.4s] BufferField Arg Init\n",
        FUNC6 (Node)));

    /* Execute the AML code for the TermArg arguments */

    Status = FUNC3 (Node, Node->Parent,
        ExtraDesc->Extra.AmlLength, ExtraDesc->Extra.AmlStart);
    FUNC7 (Status);
}