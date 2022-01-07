
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;
typedef int * command ;
typedef int Char ;


 int ERR_JOBCONTROL ;
 int ERR_SUSPLOG ;
 int ERR_SYSTEM ;
 int FSHTTY ;
 int SIGTSTP ;
 int SIG_DFL ;
 int USE (int **) ;
 int errno ;
 int grabpgrp (int ,int ) ;
 int kill (int ,int ) ;
 scalar_t__ loginsh ;
 int opgrp ;
 int setdisc (int ) ;
 int setpgid (int ,int ) ;
 int shpgrp ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int signal (int ,int ) ;
 int stderror (int ,...) ;
 int strerror (int ) ;
 int tcsetpgrp (int ,int ) ;
 int tpgrp ;
 int untty () ;

void
dosuspend(Char **v, struct command *c)
{




    USE(c);
    USE(v);

    if (loginsh)
 stderror(ERR_SUSPLOG);
    untty();
    stderror(ERR_JOBCONTROL);
    (void) setdisc(FSHTTY);
}
