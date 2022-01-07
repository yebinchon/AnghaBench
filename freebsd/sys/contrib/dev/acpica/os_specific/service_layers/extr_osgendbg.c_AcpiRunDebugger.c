
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcpiDbRunRemoteDebugger (char*) ;
 int AcpiDbUserCommands () ;
 int AcpiGbl_DebuggerConfiguration ;
 int DEBUGGER_MULTI_THREADED ;

void
AcpiRunDebugger (
    char *BatchBuffer)
{


    if (AcpiGbl_DebuggerConfiguration & DEBUGGER_MULTI_THREADED)
    {
        AcpiDbRunRemoteDebugger (BatchBuffer);
    }
    else
    {
        AcpiDbUserCommands ();
    }
}
