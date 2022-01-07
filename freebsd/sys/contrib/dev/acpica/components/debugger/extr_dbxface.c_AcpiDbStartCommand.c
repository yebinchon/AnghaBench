
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_CTRL_TRUE ;
 int AE_INFO ;
 scalar_t__ AcpiDbCommandDispatch (int ,int *,int *) ;
 int AcpiGbl_DbLineBuf ;
 int AcpiGbl_MethodExecuting ;
 scalar_t__ AcpiOsNotifyCommandComplete () ;
 scalar_t__ AcpiOsWaitCommandReady () ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbStartCommand (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    AcpiGbl_MethodExecuting = TRUE;
    Status = AE_CTRL_TRUE;

    while (Status == AE_CTRL_TRUE)
    {


        Status = AcpiOsNotifyCommandComplete ();
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }



        Status = AcpiOsWaitCommandReady ();
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }

        Status = AcpiDbCommandDispatch (AcpiGbl_DbLineBuf, WalkState, Op);
    }



ErrorExit:
    if (ACPI_FAILURE (Status) && Status != AE_CTRL_TERMINATE)
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "While parsing/handling command line"));
    }
    return (Status);
}
