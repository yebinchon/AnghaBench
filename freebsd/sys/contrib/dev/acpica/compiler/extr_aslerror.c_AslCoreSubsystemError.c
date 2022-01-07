
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Filename; int Column; int LogicalByteOffset; int LogicalLineNumber; int LineNumber; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_CORE_EXCEPTION ;
 char* AcpiFormatException (int ) ;
 int AslAbort () ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int ) ;
 int AslGbl_MsgBuffer ;
 int sprintf (int ,char*,char*,char*) ;

void
AslCoreSubsystemError (
    ACPI_PARSE_OBJECT *Op,
    ACPI_STATUS Status,
    char *ExtraMessage,
    BOOLEAN Abort)
{

    sprintf (AslGbl_MsgBuffer, "%s %s", AcpiFormatException (Status), ExtraMessage);

    if (Op)
    {
        AslCommonError (ASL_ERROR, ASL_MSG_CORE_EXCEPTION,
            Op->Asl.LineNumber,
            Op->Asl.LogicalLineNumber,
            Op->Asl.LogicalByteOffset,
            Op->Asl.Column,
            Op->Asl.Filename, AslGbl_MsgBuffer);
    }
    else
    {
        AslCommonError (ASL_ERROR, ASL_MSG_CORE_EXCEPTION,
            0, 0, 0, 0, ((void*)0), AslGbl_MsgBuffer);
    }

    if (Abort)
    {
        AslAbort ();
    }
}
