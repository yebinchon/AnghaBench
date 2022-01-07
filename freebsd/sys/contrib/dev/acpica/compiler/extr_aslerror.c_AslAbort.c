
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_FILE_STDERR ;
 int ASL_FILE_STDOUT ;
 int AePrintErrorLog (int ) ;
 scalar_t__ AslGbl_DebugFlag ;
 int exit (int) ;

void
AslAbort (
    void)
{

    AePrintErrorLog (ASL_FILE_STDERR);
    if (AslGbl_DebugFlag)
    {


        AePrintErrorLog (ASL_FILE_STDOUT);
    }

    exit (1);
}
