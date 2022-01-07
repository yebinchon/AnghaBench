
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int dologout (int) ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static void
sigquit(int signo)
{

 syslog(LOG_ERR, "got signal %d", signo);
 dologout(1);
}
