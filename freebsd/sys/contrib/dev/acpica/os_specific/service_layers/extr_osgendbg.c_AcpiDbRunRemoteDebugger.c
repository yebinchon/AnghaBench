
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_LINE_BUFFER_SIZE ;
 int ACPI_DEBUGGER_COMMAND_PROMPT ;
 int ACPI_DEBUGGER_EXECUTE_PROMPT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiGbl_DbCommandComplete ;
 int AcpiGbl_DbCommandReady ;
 int AcpiGbl_DbLineBuf ;
 int AcpiGbl_DbTerminateLoop ;
 int AcpiGbl_MethodExecuting ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsGetLine (int ,int ,int *) ;
 int AcpiOsPrintf (char*,int ) ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiUtSafeStrncpy (int ,char*,int ) ;

__attribute__((used)) static void
AcpiDbRunRemoteDebugger (
    char *BatchBuffer)
{
    ACPI_STATUS Status;
    char *Ptr = BatchBuffer;
    char *Cmd = Ptr;


    while (!AcpiGbl_DbTerminateLoop)
    {
        if (BatchBuffer)
        {
            if (*Ptr)
            {
                while (*Ptr)
                {
                    if (*Ptr == ',')
                    {

                        *Ptr = ' ';
                    }
                    else if (*Ptr == ';')
                    {
                        *Ptr = '\0';
                        continue;
                    }

                    Ptr++;
                }

                AcpiUtSafeStrncpy (AcpiGbl_DbLineBuf, Cmd, ACPI_DB_LINE_BUFFER_SIZE);
                Ptr++;
                Cmd = Ptr;
            }
            else
            {
                return;
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
            if (ACPI_FAILURE (Status))
            {
                return;
            }
        }





        AcpiOsReleaseMutex (AcpiGbl_DbCommandReady);

        Status = AcpiOsAcquireMutex (AcpiGbl_DbCommandComplete,
            ACPI_WAIT_FOREVER);
        if (ACPI_FAILURE (Status))
        {
            return;
        }
    }
}
