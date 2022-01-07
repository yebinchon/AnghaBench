
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
struct command {int t_dflg; scalar_t__ t_systype; int t_nice; } ;
typedef int sigset_t ;
typedef int pid_t ;
struct TYPE_2__ {int p_jobid; } ;


 scalar_t__ EPERM ;
 int ERR_NESTING ;
 int ERR_NOPROC ;
 int ERR_SYSTEM ;
 int FORKSLEEP ;
 int F_NICE ;
 int F_NOHUP ;
 int F_NOINTERRUPT ;
 int F_VER ;
 int PRIO_PROCESS ;
 int SA_RESTART ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGIO ;
 int SIGN_EXTEND_CHAR (int ) ;
 int SIGQUIT ;
 int SIGSYNCH ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_BLOCK ;
 int SIG_DFL ;
 int SIG_IGN ;
 int STRSYSTYPE ;
 int STRbsd43 ;
 int STRminus ;
 int STRsys53 ;
 int child ;
 int cleanup_push (scalar_t__*,int ) ;
 int cleanup_push_mark () ;
 int cleanup_until (scalar_t__*) ;
 int disabled_cleanup ;
 int dohash (int *,int *) ;
 scalar_t__ eq (scalar_t__,int ) ;
 scalar_t__ errno ;
 int fork () ;
 int getpid () ;
 int getppid () ;
 scalar_t__ gointr ;
 int handle_pending_signals () ;
 scalar_t__ kill (int ,int ) ;
 int nice (int) ;
 int palloc (int,struct command*) ;
 struct sigaction parterm ;
 int pause ;
 scalar_t__ pchild_disabled ;
 TYPE_1__* pcurrjob ;
 int pflushall () ;
 int pgetty (int,int) ;
 scalar_t__ setintr ;
 int setpgid (int,int) ;
 int setpriority (int ,int ,int) ;
 int settimes () ;
 scalar_t__ sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;
 int sleep (int ) ;
 int stderror (int ,...) ;
 int strerror (scalar_t__) ;
 int synch_handler ;
 scalar_t__ timesdone ;
 int tpgrp ;
 int tsetenv (int ,int ) ;

pid_t
pfork(struct command *t, int wanttty)
{
    pid_t pid;
    int ignint = 0;
    pid_t pgrp;
    if (setintr)
 ignint = (tpgrp == -1 && (t->t_dflg & F_NOINTERRUPT))
     || (gointr && eq(gointr, STRminus));




    if (child == 16)
 stderror(ERR_NESTING, 16);
    if (wanttty < 0) {
 pchild_disabled++;
 cleanup_push(&pchild_disabled, disabled_cleanup);
    }
    while ((pid = fork()) == -1)
 if (setintr == 0)
     (void) sleep(FORKSLEEP);
 else
     stderror(ERR_NOPROC);
    if (pid == 0) {
 (void)cleanup_push_mark();
 pchild_disabled = 0;
 settimes();
 pgrp = pcurrjob ? pcurrjob->p_jobid : getpid();
 pflushall();
 pcurrjob = ((void*)0);

 timesdone = 0;

 child++;
 if (setintr) {
     setintr = 0;




     (void) signal(SIGINT, ignint ? SIG_IGN : SIG_DFL);
     (void) signal(SIGQUIT, ignint ? SIG_IGN : SIG_DFL);
     sigaction(SIGTERM, &parterm, ((void*)0));
 }
 else if (tpgrp == -1 && (t->t_dflg & F_NOINTERRUPT)) {
     (void) signal(SIGINT, SIG_IGN);
     (void) signal(SIGQUIT, SIG_IGN);
 }




 pgetty(wanttty, pgrp);





 if (t->t_dflg & F_NOHUP)
     (void) signal(SIGHUP, SIG_IGN);
 if (t->t_dflg & F_NICE) {
     int nval = SIGN_EXTEND_CHAR(t->t_nice);




     (void) nice(nval);

 }
    }
    else {
 palloc(pid, t);
 if (wanttty < 0)
     cleanup_until(&pchild_disabled);
    }
    return (pid);
}
