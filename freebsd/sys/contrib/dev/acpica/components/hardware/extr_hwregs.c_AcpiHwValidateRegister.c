
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT64 ;
struct TYPE_4__ {scalar_t__ SpaceId; int AccessWidth; scalar_t__ BitWidth; scalar_t__ BitOffset; int Address; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_ERROR (int ) ;
 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 int ACPI_WARNING (int ) ;
 int AE_BAD_ADDRESS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_SUPPORT ;
 scalar_t__ AcpiHwGetAccessBitWidth (int ,TYPE_1__*,scalar_t__) ;

ACPI_STATUS
AcpiHwValidateRegister (
    ACPI_GENERIC_ADDRESS *Reg,
    UINT8 MaxBitWidth,
    UINT64 *Address)
{
    UINT8 BitWidth;
    UINT8 AccessWidth;




    if (!Reg)
    {
        return (AE_BAD_PARAMETER);
    }






    ACPI_MOVE_64_TO_64 (Address, &Reg->Address);
    if (!(*Address))
    {
        return (AE_BAD_ADDRESS);
    }



    if ((Reg->SpaceId != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
        (Reg->SpaceId != ACPI_ADR_SPACE_SYSTEM_IO))
    {
        ACPI_ERROR ((AE_INFO,
            "Unsupported address space: 0x%X", Reg->SpaceId));
        return (AE_SUPPORT);
    }



    if (Reg->AccessWidth > 4)
    {
        ACPI_ERROR ((AE_INFO,
            "Unsupported register access width: 0x%X", Reg->AccessWidth));
        return (AE_SUPPORT);
    }



    AccessWidth = AcpiHwGetAccessBitWidth (*Address, Reg, MaxBitWidth);
    BitWidth = ACPI_ROUND_UP (Reg->BitOffset + Reg->BitWidth, AccessWidth);
    if (MaxBitWidth < BitWidth)
    {
        ACPI_WARNING ((AE_INFO,
            "Requested bit width 0x%X is smaller than register bit width 0x%X",
            MaxBitWidth, BitWidth));
        return (AE_SUPPORT);
    }

    return (AE_OK);
}
