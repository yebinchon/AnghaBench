
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
struct TYPE_3__ {int SpaceId; int BitWidth; scalar_t__ AccessWidth; scalar_t__ BitOffset; int Address; } ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 int ACPI_ERROR (int ) ;
 int ACPI_FADT_GPE_REGISTER ;
 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 int AE_INFO ;

__attribute__((used)) static void
AcpiTbInitGenericAddress (
    ACPI_GENERIC_ADDRESS *GenericAddress,
    UINT8 SpaceId,
    UINT8 ByteWidth,
    UINT64 Address,
    const char *RegisterName,
    UINT8 Flags)
{
    UINT8 BitWidth;






    BitWidth = (UINT8) (ByteWidth * 8);
    if (ByteWidth > 31)
    {





        if (!(Flags & ACPI_FADT_GPE_REGISTER))
        {
            ACPI_ERROR ((AE_INFO,
                "%s - 32-bit FADT register is too long (%u bytes, %u bits) "
                "to convert to GAS struct - 255 bits max, truncating",
                RegisterName, ByteWidth, (ByteWidth * 8)));
        }

        BitWidth = 255;
    }





    ACPI_MOVE_64_TO_64 (&GenericAddress->Address, &Address);



    GenericAddress->SpaceId = SpaceId;
    GenericAddress->BitWidth = BitWidth;
    GenericAddress->BitOffset = 0;
    GenericAddress->AccessWidth = 0;
}
