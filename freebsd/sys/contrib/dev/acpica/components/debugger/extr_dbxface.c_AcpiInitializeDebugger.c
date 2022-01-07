
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DEBUG_BUFFER_SIZE ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int ACPI_LV_TABLES ;
 int ACPI_LV_VERBOSITY2 ;
 int ACPI_NORMAL_DEFAULT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ AML_ROOT_PREFIX ;
 int AcpiDbExecuteThread ;
 int * AcpiGbl_DbBuffer ;
 int AcpiGbl_DbConsoleDebugLevel ;
 int AcpiGbl_DbDebugLevel ;
 int * AcpiGbl_DbFilename ;
 void* AcpiGbl_DbOpt_NoIniMethods ;
 int AcpiGbl_DbOutputFlags ;
 void* AcpiGbl_DbOutputToFile ;
 scalar_t__* AcpiGbl_DbScopeBuf ;
 int AcpiGbl_DbScopeNode ;
 void* AcpiGbl_DbTerminateLoop ;
 int AcpiGbl_DbThreadId ;
 void* AcpiGbl_DbThreadsTerminated ;
 int AcpiGbl_DebuggerConfiguration ;
 int AcpiGbl_RootNode ;
 int * AcpiOsAllocate (int ) ;
 int AcpiOsExecute (int ,int ,int *) ;
 int AcpiOsGetThreadId () ;
 int AcpiOsInitializeDebugger () ;
 int AcpiOsPrintf (char*) ;
 int DEBUGGER_MULTI_THREADED ;
 void* FALSE ;
 int OSL_DEBUGGER_MAIN_THREAD ;
 void* TRUE ;
 int memset (int *,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiInitializeDebugger (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (AcpiInitializeDebugger);




    AcpiGbl_DbBuffer = ((void*)0);
    AcpiGbl_DbFilename = ((void*)0);
    AcpiGbl_DbOutputToFile = FALSE;

    AcpiGbl_DbDebugLevel = ACPI_LV_VERBOSITY2;
    AcpiGbl_DbConsoleDebugLevel = ACPI_NORMAL_DEFAULT | ACPI_LV_TABLES;
    AcpiGbl_DbOutputFlags = ACPI_DB_CONSOLE_OUTPUT;

    AcpiGbl_DbOpt_NoIniMethods = FALSE;

    AcpiGbl_DbBuffer = AcpiOsAllocate (ACPI_DEBUG_BUFFER_SIZE);
    if (!AcpiGbl_DbBuffer)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }
    memset (AcpiGbl_DbBuffer, 0, ACPI_DEBUG_BUFFER_SIZE);



    AcpiGbl_DbScopeBuf [0] = AML_ROOT_PREFIX;
    AcpiGbl_DbScopeBuf [1] = 0;
    AcpiGbl_DbScopeNode = AcpiGbl_RootNode;



    AcpiGbl_DbTerminateLoop = FALSE;






    if (AcpiGbl_DebuggerConfiguration & DEBUGGER_MULTI_THREADED)
    {


        Status = AcpiOsInitializeDebugger ();
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not get debugger mutex\n");
            return_ACPI_STATUS (Status);
        }



        AcpiGbl_DbThreadsTerminated = FALSE;
        Status = AcpiOsExecute (OSL_DEBUGGER_MAIN_THREAD,
            AcpiDbExecuteThread, ((void*)0));
        if (ACPI_FAILURE (Status))
        {
            ACPI_EXCEPTION ((AE_INFO, Status,
                "Could not start debugger thread"));
            AcpiGbl_DbThreadsTerminated = TRUE;
            return_ACPI_STATUS (Status);
        }
    }
    else
    {
        AcpiGbl_DbThreadId = AcpiOsGetThreadId ();
    }

    return_ACPI_STATUS (AE_OK);
}
