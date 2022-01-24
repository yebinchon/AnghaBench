#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_11__ {int /*<<< orphan*/  ObjectType; } ;
struct TYPE_10__ {int /*<<< orphan*/ * WalkState; } ;
struct TYPE_8__ {scalar_t__ Node; int /*<<< orphan*/  AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  TYPE_3__ ACPI_OP_WALK_INFO ;
typedef  TYPE_4__ ACPI_OPCODE_INFO ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{
    ACPI_OP_WALK_INFO       *Info = Context;
    const ACPI_OPCODE_INFO  *OpInfo;
    ACPI_WALK_STATE         *WalkState;
    ACPI_OBJECT_TYPE        ObjectType;
    ACPI_STATUS             Status;


    WalkState = Info->WalkState;
    OpInfo = FUNC4 (Op->Common.AmlOpcode);

    /* Open new scope if necessary */

    ObjectType = OpInfo->ObjectType;
    if (FUNC3 (ObjectType))
    {
        if (Op->Common.Node)
        {

            Status = FUNC2 (Op->Common.Node, ObjectType,
                WalkState);
            if (FUNC0 (Status))
            {
                return (Status);
            }
        }
    }

    /*
     * Check if this operator contains a reference to a resource descriptor.
     * If so, convert the reference into a symbolic reference.
     */
    FUNC1 (Op, WalkState);
    return (AE_OK);
}