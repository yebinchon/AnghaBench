
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NetNonblockingIO (int ,int) ;
 int SIGINFO ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTSTP ;
 int SIGWINCH ;
 int SOL_SOCKET ;
 int SO_OOBINLINE ;
 int SetSockOpt (int ,int ,int ,int) ;
 int ayt ;
 int deadpeer ;
 int intr ;
 int intr2 ;
 int net ;
 int perror (char*) ;
 int sendwin ;
 int setconnmode (int ) ;
 int signal (int ,int ) ;
 int susp ;

void
sys_telnet_init(void)
{
    signal(SIGINT, intr);
    signal(SIGQUIT, intr2);
    signal(SIGPIPE, deadpeer);
    setconnmode(0);

    NetNonblockingIO(net, 1);






}
