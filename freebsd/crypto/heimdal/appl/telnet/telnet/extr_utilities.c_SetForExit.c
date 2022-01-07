
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EmptyTerminal () ;
 int fflush (int ) ;
 int netiring ;
 scalar_t__ ring_full_count (int *) ;
 int setcommandmode () ;
 int setconnmode (int ) ;
 int stderr ;
 int stdout ;
 int telrcv () ;

void
SetForExit(void)
{
    setconnmode(0);
    do {
 telrcv();
 EmptyTerminal();
    } while (ring_full_count(&netiring));
    setcommandmode();
    fflush(stdout);
    fflush(stderr);
    setconnmode(0);
    EmptyTerminal();
    setcommandmode();
}
