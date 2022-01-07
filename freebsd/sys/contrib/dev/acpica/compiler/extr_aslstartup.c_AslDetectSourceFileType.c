
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int Handle; int Filename; } ;
typedef TYPE_1__ ASL_FILE_INFO ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ASL_INPUT_TYPE_ASCII_ASL ;
 int ASL_INPUT_TYPE_ASCII_DATA ;
 int ASL_INPUT_TYPE_BINARY ;
 int ASL_INPUT_TYPE_BINARY_ACPI_TABLE ;
 int AcValidateTableHeader (int ,int ) ;
 char* AslGbl_CurrentLineBuffer ;
 int AslGbl_LineBufferSize ;
 int FALSE ;
 int FlIsFileAsciiSource (int ,int ) ;
 int SEEK_SET ;
 scalar_t__ fgets (char*,int ,int ) ;
 int fprintf (int ,char*) ;
 int fseek (int ,int ,int ) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static UINT8
AslDetectSourceFileType (
    ASL_FILE_INFO *Info)
{
    char *FileChar;
    UINT8 Type = ASL_INPUT_TYPE_ASCII_DATA;
    ACPI_STATUS Status;




    Status = FlIsFileAsciiSource (Info->Filename, FALSE);
    if (ACPI_SUCCESS (Status))
    {




        while (fgets (AslGbl_CurrentLineBuffer, AslGbl_LineBufferSize, Info->Handle))
        {


            FileChar = AslGbl_CurrentLineBuffer;
            while (*FileChar)
            {
                *FileChar = (char) toupper ((int) *FileChar);
                FileChar++;
            }



            if (strstr (AslGbl_CurrentLineBuffer, "DEFINITIONBLOCK"))
            {


                Type = ASL_INPUT_TYPE_ASCII_ASL;
                goto Cleanup;
            }
        }



        Type = ASL_INPUT_TYPE_ASCII_DATA;
        goto Cleanup;
    }



    fseek (Info->Handle, 0, SEEK_SET);

    Status = AcValidateTableHeader (Info->Handle, 0);
    if (ACPI_SUCCESS (Status))
    {
        fprintf (stderr,
            "Binary file appears to be a valid ACPI table, disassembling\n");

        Type = ASL_INPUT_TYPE_BINARY_ACPI_TABLE;
        goto Cleanup;
    }
    else
    {
        fprintf (stderr,
            "Binary file does not contain a valid ACPI table\n");
    }

    Type = ASL_INPUT_TYPE_BINARY;


Cleanup:



    fseek (Info->Handle, 0, SEEK_SET);
    return (Type);
}
