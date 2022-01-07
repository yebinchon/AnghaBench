
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGTERM ;
 int sigalrms ;
 int sigchlds ;
 int sighups ;
 int sigterms ;

void
auditd_relay_signal(int signal)
{
        if (signal == SIGHUP)
                sighups++;
        if (signal == SIGTERM)
                sigterms++;
        if (signal == SIGCHLD)
                sigchlds++;
 if (signal == SIGALRM)
  sigalrms++;
}
