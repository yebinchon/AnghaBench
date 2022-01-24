#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  Type; } ;
struct TYPE_18__ {TYPE_1__ Common; } ;
struct TYPE_17__ {int /*<<< orphan*/  Opcode; TYPE_2__* OpInfo; } ;
struct TYPE_16__ {int /*<<< orphan*/  RuntimeArgs; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERSION ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERT_HEX ; 
#define  ACPI_TYPE_BUFFER 140 
#define  ACPI_TYPE_BUFFER_FIELD 139 
#define  ACPI_TYPE_INTEGER 138 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 137 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 136 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 135 
#define  ACPI_TYPE_STRING 134 
 scalar_t__ AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AE_TYPE ; 
#define  ARGI_FIXED_TARGET 133 
#define  ARGI_INTEGER_REF 132 
#define  ARGI_REFERENCE 131 
#define  ARGI_SIMPLE_TARGET 130 
#define  ARGI_STORE_TARGET 129 
#define  ARGI_TARGETREF 128 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_4__**) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_4__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExConvertToTargetType ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

ACPI_STATUS
FUNC10 (
    ACPI_OBJECT_TYPE        DestinationType,
    ACPI_OPERAND_OBJECT     *SourceDesc,
    ACPI_OPERAND_OBJECT     **ResultDesc,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC2 (ExConvertToTargetType);


    /* Default behavior */

    *ResultDesc = SourceDesc;

    /*
     * If required by the target,
     * perform implicit conversion on the source before we store it.
     */
    switch (FUNC8 (WalkState->OpInfo->RuntimeArgs))
    {
    case ARGI_SIMPLE_TARGET:
    case ARGI_FIXED_TARGET:
    case ARGI_INTEGER_REF:      /* Handles Increment, Decrement cases */

        switch (DestinationType)
        {
        case ACPI_TYPE_LOCAL_REGION_FIELD:
            /*
             * Named field can always handle conversions
             */
            break;

        default:

            /* No conversion allowed for these types */

            if (DestinationType != SourceDesc->Common.Type)
            {
                FUNC0 ((ACPI_DB_INFO,
                    "Explicit operator, will store (%s) over existing type (%s)\n",
                    FUNC6 (SourceDesc),
                    FUNC7 (DestinationType)));
                Status = AE_TYPE;
            }
        }
        break;

    case ARGI_TARGETREF:
    case ARGI_STORE_TARGET:

        switch (DestinationType)
        {
        case ACPI_TYPE_INTEGER:
        case ACPI_TYPE_BUFFER_FIELD:
        case ACPI_TYPE_LOCAL_BANK_FIELD:
        case ACPI_TYPE_LOCAL_INDEX_FIELD:
            /*
             * These types require an Integer operand. We can convert
             * a Buffer or a String to an Integer if necessary.
             */
            Status = FUNC4 (SourceDesc, ResultDesc,
                ACPI_IMPLICIT_CONVERSION);
            break;

        case ACPI_TYPE_STRING:
            /*
             * The operand must be a String. We can convert an
             * Integer or Buffer if necessary
             */
            Status = FUNC5 (SourceDesc, ResultDesc,
                ACPI_IMPLICIT_CONVERT_HEX);
            break;

        case ACPI_TYPE_BUFFER:
            /*
             * The operand must be a Buffer. We can convert an
             * Integer or String if necessary
             */
            Status = FUNC3 (SourceDesc, ResultDesc);
            break;

        default:

            FUNC1 ((AE_INFO,
                "Bad destination type during conversion: 0x%X",
                DestinationType));
            Status = AE_AML_INTERNAL;
            break;
        }
        break;

    case ARGI_REFERENCE:
        /*
         * CreateXxxxField cases - we are storing the field object into the name
         */
        break;

    default:

        FUNC1 ((AE_INFO,
            "Unknown Target type ID 0x%X AmlOpcode 0x%X DestType %s",
            FUNC8 (WalkState->OpInfo->RuntimeArgs),
            WalkState->Opcode, FUNC7 (DestinationType)));
        Status = AE_AML_INTERNAL;
    }

    /*
     * Source-to-Target conversion semantics:
     *
     * If conversion to the target type cannot be performed, then simply
     * overwrite the target with the new object and type.
     */
    if (Status == AE_TYPE)
    {
        Status = AE_OK;
    }

    FUNC9 (Status);
}