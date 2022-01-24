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
struct TYPE_9__ {int Flags; int /*<<< orphan*/  Length; int /*<<< orphan*/  Address; int /*<<< orphan*/  SpaceId; int /*<<< orphan*/ * Node; } ;
struct TYPE_8__ {int /*<<< orphan*/  AmlStart; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  ScopeNode; } ;
struct TYPE_10__ {TYPE_2__ Region; TYPE_1__ Extra; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsGetRegionArguments ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ExtraDesc;


    FUNC3 (DsGetRegionArguments, ObjDesc);


    if (ObjDesc->Region.Flags & AOPOBJ_DATA_VALID)
    {
        FUNC9 (AE_OK);
    }

    ExtraDesc = FUNC5 (ObjDesc);
    if (!ExtraDesc)
    {
        FUNC9 (AE_NOT_EXIST);
    }

    /* Get the Region node */

    Node = ObjDesc->Region.Node;

    FUNC0 (FUNC7 (
        ACPI_TYPE_REGION, Node, NULL));

    FUNC1 ((ACPI_DB_EXEC,
        "[%4.4s] OpRegion Arg Init at AML %p\n",
        FUNC8 (Node), ExtraDesc->Extra.AmlStart));

    /* Execute the argument AML */

    Status = FUNC4 (Node, ExtraDesc->Extra.ScopeNode,
        ExtraDesc->Extra.AmlLength, ExtraDesc->Extra.AmlStart);
    if (FUNC2 (Status))
    {
        FUNC9 (Status);
    }

    Status = FUNC6 (ObjDesc->Region.SpaceId,
        ObjDesc->Region.Address, ObjDesc->Region.Length, Node);
    FUNC9 (Status);
}