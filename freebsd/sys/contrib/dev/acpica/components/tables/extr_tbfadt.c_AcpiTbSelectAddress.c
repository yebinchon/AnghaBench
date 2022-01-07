
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;


 int ACPI_BIOS_WARNING (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int AE_INFO ;
 scalar_t__ AcpiGbl_Use32BitFadtAddresses ;

__attribute__((used)) static UINT64
AcpiTbSelectAddress (
    char *RegisterName,
    UINT32 Address32,
    UINT64 Address64)
{

    if (!Address64)
    {


        return ((UINT64) Address32);
    }

    if (Address32 &&
       (Address64 != (UINT64) Address32))
    {


        ACPI_BIOS_WARNING ((AE_INFO,
            "32/64X %s address mismatch in FADT: "
            "0x%8.8X/0x%8.8X%8.8X, using %u-bit address",
            RegisterName, Address32, ACPI_FORMAT_UINT64 (Address64),
            AcpiGbl_Use32BitFadtAddresses ? 32 : 64));



        if (AcpiGbl_Use32BitFadtAddresses)
        {
            return ((UINT64) Address32);
        }
    }



    return (Address64);
}
