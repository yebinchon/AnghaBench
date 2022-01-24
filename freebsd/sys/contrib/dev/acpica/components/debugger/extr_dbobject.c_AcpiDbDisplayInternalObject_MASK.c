#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_18__ {size_t Value; int /*<<< orphan*/  Class; TYPE_6__* Node; TYPE_6__* Object; TYPE_6__** Where; int /*<<< orphan*/  TargetType; } ;
struct TYPE_15__ {int /*<<< orphan*/  Type; } ;
struct TYPE_20__ {TYPE_4__ Reference; TYPE_1__ Common; } ;
struct TYPE_19__ {TYPE_3__* Arguments; TYPE_2__* LocalVariables; } ;
struct TYPE_17__ {TYPE_6__* Object; } ;
struct TYPE_16__ {TYPE_6__* Object; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_6__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
#define  ACPI_DESC_TYPE_NAMED 140 
#define  ACPI_DESC_TYPE_OPERAND 139 
#define  ACPI_DESC_TYPE_PARSER 138 
 int FUNC0 (TYPE_6__*) ; 
#define  ACPI_REFCLASS_ARG 137 
#define  ACPI_REFCLASS_DEBUG 136 
#define  ACPI_REFCLASS_INDEX 135 
#define  ACPI_REFCLASS_LOCAL 134 
#define  ACPI_REFCLASS_NAME 133 
#define  ACPI_REFCLASS_REFOF 132 
#define  ACPI_REFCLASS_TABLE 131 
#define  ACPI_TYPE_BUFFER_FIELD 130 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_MAX ; 
#define  ACPI_TYPE_LOCAL_REFERENCE 129 
#define  ACPI_TYPE_PACKAGE 128 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 

void
FUNC6 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{
    UINT8                   Type;


    FUNC3 ("%p ", ObjDesc);

    if (!ObjDesc)
    {
        FUNC3 ("<Null Object>\n");
        return;
    }

    /* Decode the object type */

    switch (FUNC0 (ObjDesc))
    {
    case ACPI_DESC_TYPE_PARSER:

        FUNC3 ("<Parser>  ");
        break;

    case ACPI_DESC_TYPE_NAMED:

        FUNC2 ((ACPI_NAMESPACE_NODE *) ObjDesc);
        break;

    case ACPI_DESC_TYPE_OPERAND:

        Type = ObjDesc->Common.Type;
        if (Type > ACPI_TYPE_LOCAL_MAX)
        {
            FUNC3 (" Type %X [Invalid Type]", (UINT32) Type);
            return;
        }

        /* Decode the ACPI object type */

        switch (ObjDesc->Common.Type)
        {
        case ACPI_TYPE_LOCAL_REFERENCE:

            FUNC3 ("[%s] ", FUNC5 (ObjDesc));

            /* Decode the reference */

            switch (ObjDesc->Reference.Class)
            {
            case ACPI_REFCLASS_LOCAL:

                FUNC3 ("%X ", ObjDesc->Reference.Value);
                if (WalkState)
                {
                    ObjDesc = WalkState->LocalVariables
                        [ObjDesc->Reference.Value].Object;
                    FUNC3 ("%p", ObjDesc);
                    FUNC1 (ObjDesc);
                }
                break;

            case ACPI_REFCLASS_ARG:

                FUNC3 ("%X ", ObjDesc->Reference.Value);
                if (WalkState)
                {
                    ObjDesc = WalkState->Arguments
                        [ObjDesc->Reference.Value].Object;
                    FUNC3 ("%p", ObjDesc);
                    FUNC1 (ObjDesc);
                }
                break;

            case ACPI_REFCLASS_INDEX:

                switch (ObjDesc->Reference.TargetType)
                {
                case ACPI_TYPE_BUFFER_FIELD:

                    FUNC3 ("%p", ObjDesc->Reference.Object);
                    FUNC1 (ObjDesc->Reference.Object);
                    break;

                case ACPI_TYPE_PACKAGE:

                    FUNC3 ("%p", ObjDesc->Reference.Where);
                    if (!ObjDesc->Reference.Where)
                    {
                        FUNC3 (" Uninitialized WHERE pointer");
                    }
                    else
                    {
                        FUNC1 (
                            *(ObjDesc->Reference.Where));
                    }
                    break;

                default:

                    FUNC3 ("Unknown index target type");
                    break;
                }
                break;

            case ACPI_REFCLASS_REFOF:

                if (!ObjDesc->Reference.Object)
                {
                    FUNC3 (
                        "Uninitialized reference subobject pointer");
                    break;
                }

                /* Reference can be to a Node or an Operand object */

                switch (FUNC0 (ObjDesc->Reference.Object))
                {
                case ACPI_DESC_TYPE_NAMED:

                    FUNC2 (ObjDesc->Reference.Object);
                    break;

                case ACPI_DESC_TYPE_OPERAND:

                    FUNC1 (ObjDesc->Reference.Object);
                    break;

                default:
                    break;
                }
                break;

            case ACPI_REFCLASS_NAME:

                FUNC2 (ObjDesc->Reference.Node);
                break;

            case ACPI_REFCLASS_DEBUG:
            case ACPI_REFCLASS_TABLE:

                FUNC3 ("\n");
                break;

            default:    /* Unknown reference class */

                FUNC3 ("%2.2X\n", ObjDesc->Reference.Class);
                break;
            }
            break;

        default:

            FUNC3 ("<Obj>            ");
            FUNC1 (ObjDesc);
            break;
        }
        break;

    default:

        FUNC3 ("<Not a valid ACPI Object Descriptor> [%s]",
            FUNC4 (ObjDesc));
        break;
    }

    FUNC3 ("\n");
}