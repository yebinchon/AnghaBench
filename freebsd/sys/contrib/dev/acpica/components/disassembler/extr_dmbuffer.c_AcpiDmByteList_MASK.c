#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_19__ {int /*<<< orphan*/  Level; } ;
struct TYPE_14__ {scalar_t__ Integer; } ;
struct TYPE_16__ {TYPE_10__* Parent; TYPE_1__ Value; } ;
struct TYPE_17__ {int /*<<< orphan*/ * Data; } ;
struct TYPE_18__ {TYPE_3__ Common; TYPE_4__ Named; } ;
struct TYPE_15__ {int DisasmOpcode; } ;
struct TYPE_13__ {TYPE_2__ Common; } ;
typedef  TYPE_5__ ACPI_PARSE_OBJECT ;
typedef  TYPE_6__ ACPI_OP_WALK_INFO ;

/* Variables and functions */
#define  ACPI_DASM_BUFFER 133 
#define  ACPI_DASM_PLD_METHOD 132 
#define  ACPI_DASM_RESOURCE 131 
#define  ACPI_DASM_STRING 130 
#define  ACPI_DASM_UNICODE 129 
#define  ACPI_DASM_UUID 128 
 int /*<<< orphan*/  ACPI_UINT16_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

void
FUNC8 (
    ACPI_OP_WALK_INFO       *Info,
    ACPI_PARSE_OBJECT       *Op)
{
    UINT8                   *ByteData;
    UINT32                  ByteCount;


    ByteData = Op->Named.Data;
    ByteCount = (UINT32) Op->Common.Value.Integer;

    /*
     * The byte list belongs to a buffer, and can be produced by either
     * a ResourceTemplate, Unicode, quoted string, or a plain byte list.
     */
    switch (Op->Common.Parent->Common.DisasmOpcode)
    {
    case ACPI_DASM_RESOURCE:

        FUNC3 (
            Info, Op->Common.Parent, ByteData, ByteCount);
        break;

    case ACPI_DASM_STRING:

        FUNC1 (Info->Level);
        FUNC7 ((char *) ByteData, ACPI_UINT16_MAX);
        FUNC6 ("\n");
        break;

    case ACPI_DASM_UUID:

        FUNC5 (Op);
        break;

    case ACPI_DASM_UNICODE:

        FUNC4 (Op);
        break;

    case ACPI_DASM_PLD_METHOD:
#if 0
        AcpiDmDisasmByteList (Info->Level, ByteData, ByteCount);
#endif
        FUNC2 (Info->Level, ByteData, ByteCount);
        break;

    case ACPI_DASM_BUFFER:
    default:
        /*
         * Not a resource, string, or unicode string.
         * Just dump the buffer
         */
        FUNC0 (Info->Level, ByteData, ByteCount);
        break;
    }
}