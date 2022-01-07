
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_UINT32_MAX ;
 scalar_t__ ACPI_UINT64_MAX ;
 int AE_NUMERIC_OVERFLOW ;
 int AE_OK ;
 int AcpiGbl_IntegerBitWidth ;

__attribute__((used)) static ACPI_STATUS
AcpiUtStrtoulAdd64 (
    UINT64 Addend1,
    UINT32 Digit,
    UINT64 *OutSum)
{
    UINT64 Sum;




    if ((Addend1 > 0) && (Digit > (ACPI_UINT64_MAX - Addend1)))
    {
        return (AE_NUMERIC_OVERFLOW);
    }

    Sum = Addend1 + Digit;



    if ((AcpiGbl_IntegerBitWidth == 32) && (Sum > ACPI_UINT32_MAX))
    {
        return (AE_NUMERIC_OVERFLOW);
    }

    *OutSum = Sum;
    return (AE_OK);
}
