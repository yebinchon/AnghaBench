
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
 int SIG_IGN ;
 int SOL_SOCKET ;
 int SO_OOBINLINE ;
 int SetSockOpt (int ,int ,int ,int) ;
 int ayt ;
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
    (void) signal(SIGINT, intr);
    (void) signal(SIGQUIT, intr2);
    (void) signal(SIGPIPE, SIG_IGN);
    setconnmode(0);

    NetNonblockingIO(net, 1);






}
