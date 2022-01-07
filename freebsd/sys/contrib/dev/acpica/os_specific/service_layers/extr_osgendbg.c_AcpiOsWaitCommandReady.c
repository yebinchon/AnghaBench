
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_STATUS ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_LINE_BUFFER_SIZE ;
 int ACPI_DEBUGGER_COMMAND_PROMPT ;
 int ACPI_DEBUGGER_EXECUTE_PROMPT ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TIME ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiGbl_DbCommandReady ;
 int AcpiGbl_DbLineBuf ;
 scalar_t__ AcpiGbl_DbTerminateLoop ;
 scalar_t__ AcpiGbl_DebuggerConfiguration ;
 int AcpiGbl_MethodExecuting ;
 scalar_t__ AcpiOsAcquireMutex (int ,int) ;
 scalar_t__ AcpiOsGetLine (int ,int ,int *) ;
 int AcpiOsPrintf (char*,int ) ;
 scalar_t__ DEBUGGER_MULTI_THREADED ;

ACPI_STATUS
AcpiOsWaitCommandReady (
    void)
{
    ACPI_STATUS Status = AE_OK;


    if (AcpiGbl_DebuggerConfiguration == DEBUGGER_MULTI_THREADED)
    {
        Status = AE_TIME;

        while (Status == AE_TIME)
        {
            if (AcpiGbl_DbTerminateLoop)
            {
                Status = AE_CTRL_TERMINATE;
            }
            else
            {
                Status = AcpiOsAcquireMutex (AcpiGbl_DbCommandReady, 1000);
            }
        }
    }
    else
    {


        AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);



        if (!AcpiGbl_MethodExecuting)
        {
            AcpiOsPrintf ("%1c ", ACPI_DEBUGGER_COMMAND_PROMPT);
        }
        else
        {
            AcpiOsPrintf ("%1c ", ACPI_DEBUGGER_EXECUTE_PROMPT);
        }



        Status = AcpiOsGetLine (AcpiGbl_DbLineBuf,
            ACPI_DB_LINE_BUFFER_SIZE, ((void*)0));
    }

    if (ACPI_FAILURE (Status) && Status != AE_CTRL_TERMINATE)
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "While parsing/handling command line"));
    }
    return (Status);
}
