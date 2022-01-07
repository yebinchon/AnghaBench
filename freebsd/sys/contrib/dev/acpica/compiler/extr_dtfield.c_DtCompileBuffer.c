
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int DT_FIELD ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ASL_ERROR ;
 int ASL_MSG_BUFFER_ELEMENT ;
 int ASL_MSG_BUFFER_LIST ;
 int AcpiUtAsciiToHexByte (char*,int *) ;
 char* AslGbl_MsgBuffer ;
 int DtError (int ,int ,int *,char*) ;
 char* DtNormalizeBuffer (char*,int*) ;
 int sprintf (char*,char*,int,int) ;

UINT32
DtCompileBuffer (
    UINT8 *Buffer,
    char *StringValue,
    DT_FIELD *Field,
    UINT32 ByteLength)
{
    char *Substring;
    ACPI_STATUS Status;
    UINT32 Count;
    UINT32 i;




    StringValue = DtNormalizeBuffer (StringValue, &Count);
    Substring = StringValue;
    if (Count != ByteLength)
    {
        sprintf(AslGbl_MsgBuffer,
            "Found %u values, must match expected count: %u",
            Count, ByteLength);
        DtError (ASL_ERROR, ASL_MSG_BUFFER_LIST, Field, AslGbl_MsgBuffer);
        goto Exit;
    }



    for (i = 0; i < Count; i++, Substring += 3)
    {


        if (*(&Substring[2]) &&
           (*(&Substring[2]) != ' '))
        {
            DtError (ASL_ERROR, ASL_MSG_BUFFER_ELEMENT, Field, Substring);
            goto Exit;
        }



        Status = AcpiUtAsciiToHexByte (Substring, &Buffer[i]);
        if (ACPI_FAILURE (Status))
        {
            DtError (ASL_ERROR, ASL_MSG_BUFFER_ELEMENT, Field, Substring);
            goto Exit;
        }
    }

Exit:
    ACPI_FREE (StringValue);
    return (ByteLength - Count);
}
