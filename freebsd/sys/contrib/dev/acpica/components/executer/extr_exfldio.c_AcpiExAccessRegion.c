
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_9__ {int Address; int SpaceId; } ;
struct TYPE_8__ {int BaseByteOffset; int AccessByteWidth; TYPE_3__* RegionObj; } ;
struct TYPE_10__ {TYPE_2__ Region; TYPE_1__ CommonField; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IO_MASK ;
 int ACPI_MUL_8 (int ) ;
 int ACPI_READ ;
 int AE_INFO ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_NOT_IMPLEMENTED ;
 scalar_t__ AcpiEvAddressSpaceDispatch (TYPE_3__*,TYPE_3__*,int,int,int ,int *) ;
 scalar_t__ AcpiExSetupRegion (TYPE_3__*,int) ;
 int AcpiUtGetRegionName (int ) ;
 int ExAccessRegion ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiExAccessRegion (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT32 FieldDatumByteOffset,
    UINT64 *Value,
    UINT32 Function)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *RgnDesc;
    UINT32 RegionOffset;


    ACPI_FUNCTION_TRACE (ExAccessRegion);






    Status = AcpiExSetupRegion (ObjDesc, FieldDatumByteOffset);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }
    RgnDesc = ObjDesc->CommonField.RegionObj;
    RegionOffset =
        ObjDesc->CommonField.BaseByteOffset +
        FieldDatumByteOffset;

    if ((Function & ACPI_IO_MASK) == ACPI_READ)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD, "[READ]"));
    }
    else
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD, "[WRITE]"));
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_BFIELD,
        " Region [%s:%X], Width %X, ByteBase %X, Offset %X at %8.8X%8.8X\n",
        AcpiUtGetRegionName (RgnDesc->Region.SpaceId),
        RgnDesc->Region.SpaceId,
        ObjDesc->CommonField.AccessByteWidth,
        ObjDesc->CommonField.BaseByteOffset,
        FieldDatumByteOffset,
        ACPI_FORMAT_UINT64 (RgnDesc->Region.Address + RegionOffset)));



    Status = AcpiEvAddressSpaceDispatch (RgnDesc, ObjDesc,
        Function, RegionOffset,
        ACPI_MUL_8 (ObjDesc->CommonField.AccessByteWidth), Value);

    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_NOT_IMPLEMENTED)
        {
            ACPI_ERROR ((AE_INFO,
                "Region %s (ID=%u) not implemented",
                AcpiUtGetRegionName (RgnDesc->Region.SpaceId),
                RgnDesc->Region.SpaceId));
        }
        else if (Status == AE_NOT_EXIST)
        {
            ACPI_ERROR ((AE_INFO,
                "Region %s (ID=%u) has no handler",
                AcpiUtGetRegionName (RgnDesc->Region.SpaceId),
                RgnDesc->Region.SpaceId));
        }
    }

    return_ACPI_STATUS (Status);
}
