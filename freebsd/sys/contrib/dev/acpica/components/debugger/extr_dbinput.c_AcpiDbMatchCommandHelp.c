
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {char* Invocation; int Description; scalar_t__ LineCount; } ;
typedef int BOOLEAN ;
typedef TYPE_1__ ACPI_DB_COMMAND_HELP ;


 int AcpiOsPrintf (char*,char*,int ) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ tolower (int) ;

__attribute__((used)) static BOOLEAN
AcpiDbMatchCommandHelp (
    const char *Command,
    const ACPI_DB_COMMAND_HELP *Help)
{
    char *Invocation = Help->Invocation;
    UINT32 LineCount;




    if (*Invocation != ' ')
    {
        return (FALSE);
    }

    while (*Invocation == ' ')
    {
        Invocation++;
    }



    while ((*Command) && (*Invocation) && (*Invocation != ' '))
    {
        if (tolower ((int) *Command) != tolower ((int) *Invocation))
        {
            return (FALSE);
        }

        Invocation++;
        Command++;
    }



    LineCount = Help->LineCount;
    while (LineCount)
    {
        AcpiOsPrintf ("%-38s : %s", Help->Invocation, Help->Description);
        Help++;
        LineCount--;
    }

    return (TRUE);
}
