
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTSTP ;
 int TerminalSaveState () ;
 scalar_t__ TerminalWindowSize (long*,long*) ;
 scalar_t__ connected ;
 int kill (int ,int ) ;
 int printf (char*) ;
 int sendnaws () ;
 int setcommandmode () ;
 int setconnmode (int ) ;

__attribute__((used)) static int
telnetsuspend()
{
    printf("Suspend is not supported.  Try the '!' command instead\r\n");

    return 1;
}
