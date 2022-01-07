
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int FILE ;
typedef int DT_FIELD ;
typedef scalar_t__ ACPI_STATUS ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int * (*) (int *)) ;
 scalar_t__ ACPI_UINT32_MAX ;
 scalar_t__ AE_NOT_FOUND ;
 int ASL_EOF ;
 int AslAbort () ;
 int AslGbl_CurrentLineBuffer ;
 scalar_t__ AslGbl_CurrentLineNumber ;
 scalar_t__ AslGbl_CurrentLineOffset ;
 int * AslGbl_FieldList ;
 scalar_t__ AslGbl_InputByteCount ;
 scalar_t__ AslGbl_NextLineOffset ;
 scalar_t__ CmGetFileSize (int *) ;
 int DtDumpFieldList (int *) ;
 int DtGetNextLine (int *,int ) ;
 scalar_t__ DtParseLine (int ,scalar_t__,int ) ;

DT_FIELD *
DtScanFile (
    FILE *Handle)
{
    ACPI_STATUS Status;
    UINT32 Offset;


    ACPI_FUNCTION_NAME (DtScanFile);




    AslGbl_InputByteCount = CmGetFileSize (Handle);
    if (AslGbl_InputByteCount == ACPI_UINT32_MAX)
    {
        AslAbort ();
    }

    AslGbl_CurrentLineNumber = 0;
    AslGbl_CurrentLineOffset = 0;
    AslGbl_NextLineOffset = 0;



    while ((Offset = DtGetNextLine (Handle, 0)) != ASL_EOF)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE, "Line %2.2u/%4.4X - %s",
            AslGbl_CurrentLineNumber, Offset, AslGbl_CurrentLineBuffer));

        Status = DtParseLine (AslGbl_CurrentLineBuffer,
            AslGbl_CurrentLineNumber, Offset);
        if (Status == AE_NOT_FOUND)
        {
            break;
        }
    }



    DtDumpFieldList (AslGbl_FieldList);
    return (AslGbl_FieldList);
}
