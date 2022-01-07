
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* Filename; } ;
typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 int ASL_ERROR ;
 size_t ASL_FILE_AML_OUTPUT ;
 int ASL_MSG_OUTPUT_FILENAME ;
 int AcpiGbl_CaptureComments ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int *) ;
 TYPE_1__* AslGbl_Files ;
 int FILE_SUFFIX_AML_CODE ;
 int FILE_SUFFIX_CONVERT_AML ;
 char* FlGenerateFilename (char*,int ) ;
 int FlOpenFile (size_t,char*,char*) ;

ACPI_STATUS
FlOpenAmlOutputFile (
    char *FilenamePrefix)
{
    char *Filename;




    Filename = AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename;
    if (!Filename)
    {

        if (!AcpiGbl_CaptureComments)
        {
            Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_AML_CODE);
        }
        else
        {
            Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_CONVERT_AML);
        }
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_OUTPUT_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }

        AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename = Filename;
    }



    FlOpenFile (ASL_FILE_AML_OUTPUT, Filename, "w+b");
    return (AE_OK);
}
