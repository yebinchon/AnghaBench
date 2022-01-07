
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Description; scalar_t__ Invocation; } ;
typedef TYPE_1__ ACPI_DB_COMMAND_HELP ;


 int AcpiDbDisplayCommandInfo (char*,int ) ;
 TYPE_1__* AcpiGbl_DbCommandHelp ;
 int AcpiOsPrintf (char*,...) ;
 int TRUE ;

__attribute__((used)) static void
AcpiDbDisplayHelp (
    char *Command)
{
    const ACPI_DB_COMMAND_HELP *Next = AcpiGbl_DbCommandHelp;


    if (!Command)
    {


        AcpiOsPrintf ("\nSummary of AML Debugger Commands\n\n");

        while (Next->Invocation)
        {
            AcpiOsPrintf ("%-38s%s", Next->Invocation, Next->Description);
            Next++;
        }
        AcpiOsPrintf ("\n");

    }
    else
    {


        AcpiDbDisplayCommandInfo (Command, TRUE);
    }
}
