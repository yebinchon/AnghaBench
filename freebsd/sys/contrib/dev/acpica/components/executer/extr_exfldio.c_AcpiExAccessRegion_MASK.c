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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
struct TYPE_9__ {int Address; int /*<<< orphan*/  SpaceId; } ;
struct TYPE_8__ {int BaseByteOffset; int /*<<< orphan*/  AccessByteWidth; TYPE_3__* RegionObj; } ;
struct TYPE_10__ {TYPE_2__ Region; TYPE_1__ CommonField; } ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int ACPI_IO_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int ACPI_READ ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_NOT_IMPLEMENTED ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_3__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExAccessRegion ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

ACPI_STATUS
FUNC11 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    UINT32                  FieldDatumByteOffset,
    UINT64                  *Value,
    UINT32                  Function)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *RgnDesc;
    UINT32                  RegionOffset;


    FUNC5 (ExAccessRegion);


    /*
     * Ensure that the region operands are fully evaluated and verify
     * the validity of the request
     */
    Status = FUNC8 (ObjDesc, FieldDatumByteOffset);
    if (FUNC3 (Status))
    {
        FUNC10 (Status);
    }

    /*
     * The physical address of this field datum is:
     *
     * 1) The base of the region, plus
     * 2) The base offset of the field, plus
     * 3) The current offset into the field
     */
    RgnDesc = ObjDesc->CommonField.RegionObj;
    RegionOffset =
        ObjDesc->CommonField.BaseByteOffset +
        FieldDatumByteOffset;

    if ((Function & ACPI_IO_MASK) == ACPI_READ)
    {
        FUNC0 ((ACPI_DB_BFIELD, "[READ]"));
    }
    else
    {
        FUNC0 ((ACPI_DB_BFIELD, "[WRITE]"));
    }

    FUNC1 ((ACPI_DB_BFIELD,
        " Region [%s:%X], Width %X, ByteBase %X, Offset %X at %8.8X%8.8X\n",
        FUNC9 (RgnDesc->Region.SpaceId),
        RgnDesc->Region.SpaceId,
        ObjDesc->CommonField.AccessByteWidth,
        ObjDesc->CommonField.BaseByteOffset,
        FieldDatumByteOffset,
        FUNC4 (RgnDesc->Region.Address + RegionOffset)));

    /* Invoke the appropriate AddressSpace/OpRegion handler */

    Status = FUNC7 (RgnDesc, ObjDesc,
        Function, RegionOffset,
        FUNC6 (ObjDesc->CommonField.AccessByteWidth), Value);

    if (FUNC3 (Status))
    {
        if (Status == AE_NOT_IMPLEMENTED)
        {
            FUNC2 ((AE_INFO,
                "Region %s (ID=%u) not implemented",
                FUNC9 (RgnDesc->Region.SpaceId),
                RgnDesc->Region.SpaceId));
        }
        else if (Status == AE_NOT_EXIST)
        {
            FUNC2 ((AE_INFO,
                "Region %s (ID=%u) has no handler",
                FUNC9 (RgnDesc->Region.SpaceId),
                RgnDesc->Region.SpaceId));
        }
    }

    FUNC10 (Status);
}