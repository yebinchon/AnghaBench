
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 char* ACPI_COMMON_HEADER (char*,char*) ;
 char* AML_DISASSEMBLER_NAME ;
 char* ASL_COMPILER_NAME ;






 scalar_t__ AcpiGbl_DisasmFlag ;
 int AslGbl_HexOutputFlag ;
 int FlPrintFile (int const,char*,...) ;
 int HEX_OUTPUT_ASL ;
 int HEX_OUTPUT_ASM ;
 int HEX_OUTPUT_C ;

void
AslCompilerSignon (
    UINT32 FileId)
{
    char *Prefix = "";
    char *UtilityName;




    switch (FileId)
    {
    case 132:
    case 133:

        Prefix = "; ";
        break;

    case 128:

        if (AslGbl_HexOutputFlag == HEX_OUTPUT_ASM)
        {
            Prefix = "; ";
        }
        else if ((AslGbl_HexOutputFlag == HEX_OUTPUT_C) ||
                 (AslGbl_HexOutputFlag == HEX_OUTPUT_ASL))
        {
            FlPrintFile (128, "/*\n");
            Prefix = " * ";
        }
        break;

    case 129:
    case 130:
    case 131:

        Prefix = " * ";
        break;

    default:



        break;
    }



    if (AcpiGbl_DisasmFlag)
    {
        UtilityName = AML_DISASSEMBLER_NAME;
    }
    else
    {
        UtilityName = ASL_COMPILER_NAME;
    }



    FlPrintFile (FileId, "%s\n", Prefix);
    FlPrintFile (FileId, ACPI_COMMON_HEADER (UtilityName, Prefix));
}
