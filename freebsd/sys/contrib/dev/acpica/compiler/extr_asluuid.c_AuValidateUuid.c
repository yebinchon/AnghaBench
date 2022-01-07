
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 scalar_t__ UUID_HYPHEN1_OFFSET ;
 scalar_t__ UUID_HYPHEN2_OFFSET ;
 scalar_t__ UUID_HYPHEN3_OFFSET ;
 scalar_t__ UUID_HYPHEN4_OFFSET ;
 scalar_t__ UUID_STRING_LENGTH ;
 int isxdigit (int) ;
 scalar_t__ strlen (char*) ;

ACPI_STATUS
AuValidateUuid (
    char *InString)
{
    UINT32 i;


    if (!InString || (strlen (InString) != UUID_STRING_LENGTH))
    {
        return (AE_BAD_PARAMETER);
    }



    for (i = 0; i < UUID_STRING_LENGTH; i++)
    {


        if ((i == UUID_HYPHEN1_OFFSET) ||
            (i == UUID_HYPHEN2_OFFSET) ||
            (i == UUID_HYPHEN3_OFFSET) ||
            (i == UUID_HYPHEN4_OFFSET))
        {
            if (InString[i] != '-')
            {
                return (AE_BAD_PARAMETER);
            }
        }
        else
        {


            if (!isxdigit ((int) InString[i]))
            {
                return (AE_BAD_PARAMETER);
            }
        }
    }

    return (AE_OK);
}
