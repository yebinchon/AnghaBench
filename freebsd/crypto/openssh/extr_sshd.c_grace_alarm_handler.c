
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ m_pid; } ;


 int BLACKLIST_AUTH_FAIL ;
 int BLACKLIST_NOTIFY (int ,char*) ;
 int SIGALRM ;
 int SIGTERM ;
 int SIG_IGN ;
 int active_state ;
 scalar_t__ getpgid (int ) ;
 scalar_t__ getpid () ;
 int kill (scalar_t__,int ) ;
 TYPE_1__* pmonitor ;
 int sigdie (char*,int ,int ) ;
 int signal (int ,int ) ;
 int ssh_remote_ipaddr (int ) ;
 int ssh_remote_port (int ) ;
 scalar_t__ use_privsep ;

__attribute__((used)) static void
grace_alarm_handler(int sig)
{
 if (use_privsep && pmonitor != ((void*)0) && pmonitor->m_pid > 0)
  kill(pmonitor->m_pid, SIGALRM);





 if (getpgid(0) == getpid()) {
  signal(SIGTERM, SIG_IGN);
  kill(0, SIGTERM);
 }

 BLACKLIST_NOTIFY(BLACKLIST_AUTH_FAIL, "ssh");


 sigdie("Timeout before authentication for %s port %d",
     ssh_remote_ipaddr(active_state), ssh_remote_port(active_state));
}
