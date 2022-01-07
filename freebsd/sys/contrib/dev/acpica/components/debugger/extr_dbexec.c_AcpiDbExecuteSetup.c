
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Name; int Flags; scalar_t__* Pathname; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_DB_METHOD_INFO ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_BUFFER_OVERFLOW ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiDbPrepNamestring (scalar_t__*) ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiGbl_CmSingleStep ;
 char* AcpiGbl_DbScopeBuf ;
 int AcpiOsPrintf (char*,scalar_t__*) ;
 scalar_t__ AcpiUtSafeStrcat (scalar_t__*,int,char*) ;
 int DbExecuteSetup ;
 int EX_SINGLE_STEP ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbExecuteSetup (
    ACPI_DB_METHOD_INFO *Info)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_NAME (DbExecuteSetup);




    Info->Pathname[0] = 0;
    if ((Info->Name[0] != '\\') &&
        (Info->Name[0] != '/'))
    {
        if (AcpiUtSafeStrcat (Info->Pathname, sizeof (Info->Pathname),
            AcpiGbl_DbScopeBuf))
        {
            Status = AE_BUFFER_OVERFLOW;
            goto ErrorExit;
        }
    }

    if (AcpiUtSafeStrcat (Info->Pathname, sizeof (Info->Pathname),
        Info->Name))
    {
        Status = AE_BUFFER_OVERFLOW;
        goto ErrorExit;
    }

    AcpiDbPrepNamestring (Info->Pathname);

    AcpiDbSetOutputDestination (ACPI_DB_DUPLICATE_OUTPUT);
    AcpiOsPrintf ("Evaluating %s\n", Info->Pathname);

    if (Info->Flags & EX_SINGLE_STEP)
    {
        AcpiGbl_CmSingleStep = TRUE;
        AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
    }

    else
    {


        AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    }

    return (AE_OK);

ErrorExit:

    ACPI_EXCEPTION ((AE_INFO, Status, "During setup for method execution"));
    return (Status);
}
