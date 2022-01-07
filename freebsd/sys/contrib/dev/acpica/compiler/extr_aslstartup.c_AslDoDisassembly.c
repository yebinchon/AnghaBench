
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Filename; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_CONTINUE ;
 int AE_OK ;
 size_t ASL_FILE_INPUT ;
 int AcpiAllocateRootTable (int) ;
 int AcpiDmUnresolvedWarning (int ) ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_DmOpt_Disasm ;
 int AcpiOsPrintf (char*,int ) ;
 int AdAmlDisassemble (int ,int ,int ,int *) ;
 int AeClearErrorLog () ;
 scalar_t__ AslGbl_DoCompile ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_OutputFilenamePrefix ;
 int AslToFile ;
 int TRUE ;

ACPI_STATUS
AslDoDisassembly (
    void)
{
    ACPI_STATUS Status;


    Status = AcpiAllocateRootTable (4);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not initialize ACPI Table Manager, %s\n",
            AcpiFormatException (Status));
        return (Status);
    }



    AcpiGbl_DmOpt_Disasm = TRUE;
    Status = AdAmlDisassemble (AslToFile,
        AslGbl_Files[ASL_FILE_INPUT].Filename, AslGbl_OutputFilenamePrefix,
        &AslGbl_Files[ASL_FILE_INPUT].Filename);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    AcpiDmUnresolvedWarning (0);



    AeClearErrorLog ();





    if (AslGbl_DoCompile)
    {
        AcpiOsPrintf ("\nCompiling \"%s\"\n",
            AslGbl_Files[ASL_FILE_INPUT].Filename);
        return (AE_CTRL_CONTINUE);
    }

    return (AE_OK);
}
