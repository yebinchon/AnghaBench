
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_flags; scalar_t__ p_procid; struct process* p_next; } ;
typedef int * command ;
typedef int sigset_t ;
struct TYPE_2__ {struct process* p_next; } ;
typedef int Char ;


 int PRUNNING ;
 int SIGCHLD ;
 int SIGINT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int USE (int **) ;
 int handle_pending_signals () ;
 int pintr_disabled ;
 scalar_t__ pjobs ;
 TYPE_1__ proclist ;
 scalar_t__ setintr ;
 int sigaddset (int *,int ) ;
 int sigdelset (int *,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;

void
dowait(Char **v, struct command *c)
{
    struct process *pp;


    sigset_t old_mask;


    sigset_t block_mask;



    sigset_t pause_mask;

    int opintr_disabled, gotsig;

    USE(c);
    USE(v);
    pjobs++;

    sigprocmask(SIG_BLOCK, ((void*)0), &pause_mask);
    sigdelset(&pause_mask, SIGCHLD);
    if (setintr)
 sigdelset(&pause_mask, SIGINT);


    sigprocmask(SIG_BLOCK, ((void*)0), &block_mask);
    sigaddset(&block_mask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &block_mask, &old_mask);


    (void)handle_pending_signals();

loop:
    for (pp = proclist.p_next; pp; pp = pp->p_next)
 if (pp->p_procid &&
     pp->p_flags & PRUNNING) {

     sigsuspend(&pause_mask);


     opintr_disabled = pintr_disabled;
     pintr_disabled = 0;
     gotsig = handle_pending_signals();
     pintr_disabled = opintr_disabled;
     if (gotsig)
  break;
     goto loop;
 }
    pjobs = 0;

    sigprocmask(SIG_SETMASK, &old_mask, ((void*)0));
}
