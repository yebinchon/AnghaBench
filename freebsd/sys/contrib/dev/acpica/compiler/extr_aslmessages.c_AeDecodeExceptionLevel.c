
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 size_t ACPI_ARRAY_LENGTH (char const**) ;
 char const** AslErrorLevel ;
 char const** AslErrorLevelIde ;
 scalar_t__ AslGbl_VerboseErrors ;

const char *
AeDecodeExceptionLevel (
    UINT8 Level)
{


    if (Level >= ACPI_ARRAY_LENGTH (AslErrorLevel))
    {
        return ("Unknown exception level");
    }



    if (AslGbl_VerboseErrors)
    {
        return (AslErrorLevel[Level]);
    }

    return (AslErrorLevelIde[Level]);
}
