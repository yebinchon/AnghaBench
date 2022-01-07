
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT64 ;
typedef int UINT32 ;
struct TYPE_5__ {int BitOffset; int BitWidth; scalar_t__ SpaceId; } ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;
typedef scalar_t__ ACPI_IO_ADDRESS ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_IO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DIV_8 (int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_GET_BITS (scalar_t__*,int,int ) ;
 int ACPI_MASK_BITS_ABOVE_64 (int) ;
 int AcpiHwGetAccessBitWidth (scalar_t__,TYPE_1__*,int) ;
 int AcpiHwValidateRegister (TYPE_1__*,int,scalar_t__*) ;
 int AcpiHwWritePort (scalar_t__,int,int) ;
 int AcpiOsWriteMemory (scalar_t__,scalar_t__,int) ;
 int AcpiUtGetRegionName (scalar_t__) ;
 int HwWrite ;

ACPI_STATUS
AcpiHwWrite (
    UINT64 Value,
    ACPI_GENERIC_ADDRESS *Reg)
{
    UINT64 Address;
    UINT8 AccessWidth;
    UINT32 BitWidth;
    UINT8 BitOffset;
    UINT64 Value64;
    UINT8 Index;
    ACPI_STATUS Status;


    ACPI_FUNCTION_NAME (HwWrite);




    Status = AcpiHwValidateRegister (Reg, 64, &Address);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    AccessWidth = AcpiHwGetAccessBitWidth (Address, Reg, 64);
    BitWidth = Reg->BitOffset + Reg->BitWidth;
    BitOffset = Reg->BitOffset;





    Index = 0;
    while (BitWidth)
    {




        Value64 = ACPI_GET_BITS (&Value, Index * AccessWidth,
            ACPI_MASK_BITS_ABOVE_64 (AccessWidth));

        if (BitOffset >= AccessWidth)
        {
            BitOffset -= AccessWidth;
        }
        else
        {
            if (Reg->SpaceId == ACPI_ADR_SPACE_SYSTEM_MEMORY)
            {
                Status = AcpiOsWriteMemory ((ACPI_PHYSICAL_ADDRESS)
                    Address + Index * ACPI_DIV_8 (AccessWidth),
                    Value64, AccessWidth);
            }
            else
            {
                Status = AcpiHwWritePort ((ACPI_IO_ADDRESS)
                    Address + Index * ACPI_DIV_8 (AccessWidth),
                    (UINT32) Value64, AccessWidth);
            }
        }





        BitWidth -= BitWidth > AccessWidth ? AccessWidth : BitWidth;
        Index++;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_IO,
        "Wrote: %8.8X%8.8X width %2d   to %8.8X%8.8X (%s)\n",
        ACPI_FORMAT_UINT64 (Value), AccessWidth,
        ACPI_FORMAT_UINT64 (Address), AcpiUtGetRegionName (Reg->SpaceId)));

    return (Status);
}
