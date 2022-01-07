
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_flags; int p_jobid; int p_command; struct process* p_friends; } ;


 int AMPERSAND ;
 int FSHTTY ;
 int JOBDIR ;
 int NAME ;
 int NUMBER ;
 int PFOREGND ;
 int PRUNNING ;
 int PSTOPPED ;
 int SIGCONT ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int job_cmd (int ) ;
 int killpg (int ,int ) ;
 int pchild_disabled ;
 int pclrcurr (struct process*) ;
 int pprint (struct process*,int) ;
 int tcsetpgrp (int ,int ) ;

int
pstart(struct process *pp, int foregnd)
{
    int rv = 0;
    struct process *np;



    pchild_disabled++;
    cleanup_push(&pchild_disabled, disabled_cleanup);
    np = pp;
    do {


 if (np->p_flags & (PRUNNING | PSTOPPED)) {
     np->p_flags |= PRUNNING;
     np->p_flags &= ~PSTOPPED;
     if (foregnd)
  np->p_flags |= PFOREGND;
     else
  np->p_flags &= ~PFOREGND;
 }
    } while ((np = np->p_friends) != pp);
    if (!foregnd)
 pclrcurr(pp);
    (void) pprint(pp, foregnd ? NAME | JOBDIR : NUMBER | NAME | AMPERSAND);


    if (foregnd) {
 job_cmd(pp->p_command);
    }
    cleanup_until(&pchild_disabled);
    return rv != -1;
}
