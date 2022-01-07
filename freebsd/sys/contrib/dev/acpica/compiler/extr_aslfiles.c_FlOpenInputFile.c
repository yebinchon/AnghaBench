
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Handle; } ;
typedef int ACPI_STATUS ;


 int AE_OK ;
 size_t ASL_FILE_INPUT ;
 int AslCompilerin ;
 TYPE_1__* AslGbl_Files ;
 int FlOpenFile (size_t,char*,char*) ;

ACPI_STATUS
FlOpenInputFile (
    char *InputFilename)
{



    FlOpenFile (ASL_FILE_INPUT, InputFilename, "rt");
    AslCompilerin = AslGbl_Files[ASL_FILE_INPUT].Handle;

    return (AE_OK);
}
