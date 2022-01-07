
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 char* AcpiDbGetHistoryByIndex (scalar_t__) ;
 scalar_t__ AcpiGbl_NextCmdNum ;
 scalar_t__ strtoul (char*,int *,int ) ;

char *
AcpiDbGetFromHistory (
    char *CommandNumArg)
{
    UINT32 CmdNum;


    if (CommandNumArg == ((void*)0))
    {
        CmdNum = AcpiGbl_NextCmdNum - 1;
    }

    else
    {
        CmdNum = strtoul (CommandNumArg, ((void*)0), 0);
    }

    return (AcpiDbGetHistoryByIndex (CmdNum));
}
