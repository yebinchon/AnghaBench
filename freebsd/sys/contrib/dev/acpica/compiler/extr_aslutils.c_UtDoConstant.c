
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_2__ {int Filename; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ASL_ERROR ;
 size_t ASL_FILE_INPUT ;
 int ASL_MSG_SYNTAX ;
 char* AcpiFormatException (int ) ;
 int AcpiUtStrtoul64 (char*,int *) ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int ,char*) ;
 int AslGbl_CurrentColumn ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_CurrentLineOffset ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_LogicalLineNumber ;
 int sprintf (char*,char*,char*) ;

UINT64
UtDoConstant (
    char *String)
{
    ACPI_STATUS Status;
    UINT64 ConvertedInteger;
    char ErrBuf[64];


    Status = AcpiUtStrtoul64 (String, &ConvertedInteger);
    if (ACPI_FAILURE (Status))
    {
        sprintf (ErrBuf, "While creating 64-bit constant: %s\n",
            AcpiFormatException (Status));

        AslCommonError (ASL_ERROR, ASL_MSG_SYNTAX, AslGbl_CurrentLineNumber,
            AslGbl_LogicalLineNumber, AslGbl_CurrentLineOffset,
            AslGbl_CurrentColumn, AslGbl_Files[ASL_FILE_INPUT].Filename, ErrBuf);
    }

    return (ConvertedInteger);
}
