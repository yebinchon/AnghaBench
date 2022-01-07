
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {char* Value; } ;
typedef TYPE_1__ DT_FIELD ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ASL_ERROR ;
 int ASL_MSG_INVALID_UUID ;
 int AcpiUtConvertStringToUuid (char*,int *) ;
 int AslGbl_MsgBuffer ;
 int AuValidateUuid (char*) ;
 int DtNameError (int ,int ,TYPE_1__*,int ) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static ACPI_STATUS
DtCompileUuid (
    UINT8 *Buffer,
    DT_FIELD *Field,
    UINT32 ByteLength)
{
    char *InString;
    ACPI_STATUS Status;


    InString = Field->Value;

    Status = AuValidateUuid (InString);
    if (ACPI_FAILURE (Status))
    {
        sprintf (AslGbl_MsgBuffer, "%s", Field->Value);
        DtNameError (ASL_ERROR, ASL_MSG_INVALID_UUID, Field, AslGbl_MsgBuffer);
    }
    else
    {
        AcpiUtConvertStringToUuid (InString, Buffer);
    }

    return (Status);
}
