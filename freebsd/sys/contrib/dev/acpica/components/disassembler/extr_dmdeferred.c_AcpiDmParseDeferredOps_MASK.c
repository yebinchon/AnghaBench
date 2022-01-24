#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int Flags; } ;
struct TYPE_12__ {int AmlOpcode; } ;
struct TYPE_11__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Data; } ;
struct TYPE_13__ {TYPE_2__ Common; TYPE_1__ Named; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;
typedef  TYPE_4__ ACPI_OPCODE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_BANK_FIELD_OP 140 
#define  AML_BUFFER_OP 139 
#define  AML_CREATE_BIT_FIELD_OP 138 
#define  AML_CREATE_BYTE_FIELD_OP 137 
#define  AML_CREATE_DWORD_FIELD_OP 136 
#define  AML_CREATE_FIELD_OP 135 
#define  AML_CREATE_QWORD_FIELD_OP 134 
#define  AML_CREATE_WORD_FIELD_OP 133 
#define  AML_DATA_REGION_OP 132 
 int AML_DEFER ; 
#define  AML_METHOD_OP 131 
#define  AML_PACKAGE_OP 130 
#define  AML_REGION_OP 129 
#define  AML_VARIABLE_PACKAGE_OP 128 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_4__* FUNC5 (int) ; 
 int /*<<< orphan*/  DmParseDeferredOps ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_PARSE_OBJECT       *Root)
{
    const ACPI_OPCODE_INFO  *OpInfo;
    ACPI_PARSE_OBJECT       *Op = Root;
    ACPI_STATUS             Status;


    FUNC2 (DmParseDeferredOps);


    /* Traverse the entire parse tree */

    while (Op)
    {
        OpInfo = FUNC5 (Op->Common.AmlOpcode);
        if (!(OpInfo->Flags & AML_DEFER))
        {
            Op = FUNC4 (Root, Op);
            continue;
        }

        /* Now we know we have a deferred opcode */

        switch (Op->Common.AmlOpcode)
        {
        case AML_METHOD_OP:
        case AML_BUFFER_OP:
        case AML_PACKAGE_OP:
        case AML_VARIABLE_PACKAGE_OP:

            Status = FUNC3 (
                Op, Op->Named.Data, Op->Named.Length);
            if (FUNC1 (Status))
            {
                FUNC6 (Status);
            }
            break;

        /* We don't need to do anything for these deferred opcodes */

        case AML_REGION_OP:
        case AML_DATA_REGION_OP:
        case AML_CREATE_QWORD_FIELD_OP:
        case AML_CREATE_DWORD_FIELD_OP:
        case AML_CREATE_WORD_FIELD_OP:
        case AML_CREATE_BYTE_FIELD_OP:
        case AML_CREATE_BIT_FIELD_OP:
        case AML_CREATE_FIELD_OP:
        case AML_BANK_FIELD_OP:

            break;

        default:

            FUNC0 ((AE_INFO, "Unhandled deferred AML opcode [0x%.4X]",
                 Op->Common.AmlOpcode));
            break;
        }

        Op = FUNC4 (Root, Op);
    }

    FUNC6 (AE_OK);
}