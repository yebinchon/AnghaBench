
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int LOG_DEBUG ;
 scalar_t__ debug ;
 int dologout (int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static RETSIGTYPE
lostconn(int signo)
{

 if (debug)
  syslog(LOG_DEBUG, "lost connection");
 dologout(-1);
}
