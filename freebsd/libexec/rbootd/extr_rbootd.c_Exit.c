
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BpfClose () ;
 int LOG_ERR ;
 int exit (int) ;
 int syslog (int ,char*,...) ;

void
Exit(int sig)
{
 if (sig > 0)
  syslog(LOG_ERR, "going down on signal %d", sig);
 else
  syslog(LOG_ERR, "going down with fatal error");
 BpfClose();
 exit(1);
}
