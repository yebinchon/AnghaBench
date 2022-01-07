
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int dologout (int) ;
 scalar_t__ ftpdebug ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
lostconn(int signo)
{

 if (ftpdebug)
  syslog(LOG_DEBUG, "lost connection");
 dologout(1);
}
