
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int ACPI_STATUS ;


 int AE_BAD_HEX_CONSTANT ;
 int AE_OK ;
 int AcpiUtAsciiCharToHex (char) ;
 int isxdigit (int) ;

ACPI_STATUS
AcpiUtAsciiToHexByte (
    char *TwoAsciiChars,
    UINT8 *ReturnByte)
{



    if (!isxdigit ((int) TwoAsciiChars[0]) ||
        !isxdigit ((int) TwoAsciiChars[1]))
    {
        return (AE_BAD_HEX_CONSTANT);
    }

    *ReturnByte =
        AcpiUtAsciiCharToHex (TwoAsciiChars[1]) |
        (AcpiUtAsciiCharToHex (TwoAsciiChars[0]) << 4);

    return (AE_OK);
}
