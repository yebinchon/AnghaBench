
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_STATUS ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 size_t* AcpiGbl_MapToUuidOffset ;
 char AcpiUtHexToAsciiChar (char,int) ;
 size_t UUID_BUFFER_LENGTH ;
 size_t UUID_HYPHEN1_OFFSET ;
 size_t UUID_HYPHEN2_OFFSET ;
 size_t UUID_HYPHEN3_OFFSET ;
 size_t UUID_HYPHEN4_OFFSET ;
 size_t UUID_STRING_LENGTH ;

ACPI_STATUS
AuConvertUuidToString (
    char *UuidBuffer,
    char *OutString)
{
    UINT32 i;


    if (!UuidBuffer || !OutString)
    {
        return (AE_BAD_PARAMETER);
    }

    for (i = 0; i < UUID_BUFFER_LENGTH; i++)
    {
        OutString[AcpiGbl_MapToUuidOffset[i]] =
            AcpiUtHexToAsciiChar (UuidBuffer[i], 4);

        OutString[AcpiGbl_MapToUuidOffset[i] + 1] =
            AcpiUtHexToAsciiChar (UuidBuffer[i], 0);
    }



    OutString[UUID_HYPHEN1_OFFSET] =
    OutString[UUID_HYPHEN2_OFFSET] =
    OutString[UUID_HYPHEN3_OFFSET] =
    OutString[UUID_HYPHEN4_OFFSET] = '-';

    OutString[UUID_STRING_LENGTH] = 0;
    return (AE_OK);
}
