
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int * ACPI_ALLOCATE (scalar_t__) ;
 int ACPI_EXECUTER ;
 int ACPI_FREE (int *) ;
 int ACPI_LV_TRACE_POINT ;
 int ACPI_TRACE_ENABLED ;
 int ACPI_TRACE_ONESHOT ;
 int ACPI_TRACE_OPCODE ;
 int * AcpiDbTraceMethodName ;
 int AcpiDbgLayer ;
 int AcpiDebugTrace (int *,int ,int ,int ) ;
 int AcpiGbl_DbConsoleDebugLevel ;
 int AcpiOsPrintf (char*,char*) ;
 int AcpiUtStrupr (char*) ;
 int strcmp (char*,char*) ;
 int strcpy (int *,char*) ;
 scalar_t__ strlen (char*) ;

void
AcpiDbTrace (
    char *EnableArg,
    char *MethodArg,
    char *OnceArg)
{
    UINT32 DebugLevel = 0;
    UINT32 DebugLayer = 0;
    UINT32 Flags = 0;


    AcpiUtStrupr (EnableArg);
    AcpiUtStrupr (OnceArg);

    if (MethodArg)
    {
        if (AcpiDbTraceMethodName)
        {
            ACPI_FREE (AcpiDbTraceMethodName);
            AcpiDbTraceMethodName = ((void*)0);
        }

        AcpiDbTraceMethodName = ACPI_ALLOCATE (strlen (MethodArg) + 1);
        if (!AcpiDbTraceMethodName)
        {
            AcpiOsPrintf ("Failed to allocate method name (%s)\n",
                MethodArg);
            return;
        }

        strcpy (AcpiDbTraceMethodName, MethodArg);
    }

    if (!strcmp (EnableArg, "ENABLE") ||
        !strcmp (EnableArg, "METHOD") ||
        !strcmp (EnableArg, "OPCODE"))
    {
        if (!strcmp (EnableArg, "ENABLE"))
        {


            DebugLevel = AcpiGbl_DbConsoleDebugLevel;
            DebugLayer = AcpiDbgLayer;
        }
        else
        {


            DebugLevel = ACPI_LV_TRACE_POINT;
            DebugLayer = ACPI_EXECUTER;
        }

        Flags = ACPI_TRACE_ENABLED;

        if (!strcmp (EnableArg, "OPCODE"))
        {
            Flags |= ACPI_TRACE_OPCODE;
        }

        if (OnceArg && !strcmp (OnceArg, "ONCE"))
        {
            Flags |= ACPI_TRACE_ONESHOT;
        }
    }

    (void) AcpiDebugTrace (AcpiDbTraceMethodName,
        DebugLevel, DebugLayer, Flags);
}
