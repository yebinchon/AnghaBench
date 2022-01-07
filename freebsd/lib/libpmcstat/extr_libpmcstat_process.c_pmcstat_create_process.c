
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_target {int pt_pid; } ;
struct pmcstat_args {int pa_targets; int * pa_argv; } ;
struct kevent {int dummy; } ;
typedef int pid_t ;


 int AF_UNIX ;
 size_t CHILDSOCKET ;
 int EVFILT_PROC ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int EX_OSERR ;
 int EX_SOFTWARE ;
 int NOTE_EXIT ;
 size_t PARENTSOCKET ;
 int SIGCHLD ;
 int SLIST_INSERT_HEAD (int *,struct pmcstat_target*,int ) ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*) ;
 int execvp (int ,int *) ;
 int fork () ;
 int getppid () ;
 scalar_t__ kevent (int,struct kevent*,int,int *,int ,int *) ;
 int kill (int ,int ) ;
 struct pmcstat_target* malloc (int) ;
 int pt_next ;
 scalar_t__ read (int,char*,int) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int write (int,char*,int) ;

void
pmcstat_create_process(int *pmcstat_sockpair, struct pmcstat_args *args,
    int pmcstat_kq)
{
 char token;
 pid_t pid;
 struct kevent kev;
 struct pmcstat_target *pt;

 if (socketpair(AF_UNIX, SOCK_STREAM, 0, pmcstat_sockpair) < 0)
  err(EX_OSERR, "ERROR: cannot create socket pair");

 switch (pid = fork()) {
 case -1:
  err(EX_OSERR, "ERROR: cannot fork");


 case 0:
  (void) close(pmcstat_sockpair[PARENTSOCKET]);


  if (write(pmcstat_sockpair[CHILDSOCKET], "+", 1) != 1)
   err(EX_OSERR, "ERROR (child): cannot write token");


  if (read(pmcstat_sockpair[CHILDSOCKET], &token, 1) < 0)
   err(EX_OSERR, "ERROR (child): cannot read token");
  (void) close(pmcstat_sockpair[CHILDSOCKET]);


  execvp(*args->pa_argv, args->pa_argv);

  kill(getppid(), SIGCHLD);
  err(EX_OSERR, "ERROR: execvp \"%s\" failed", *args->pa_argv);


 default:
  (void) close(pmcstat_sockpair[CHILDSOCKET]);
  break;
 }


 EV_SET(&kev, pid, EVFILT_PROC, EV_ADD | EV_ONESHOT, NOTE_EXIT, 0,
     ((void*)0));
 if (kevent(pmcstat_kq, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
  err(EX_OSERR, "ERROR: cannot monitor child process %d", pid);

 if ((pt = malloc(sizeof(*pt))) == ((void*)0))
  errx(EX_SOFTWARE, "ERROR: Out of memory.");

 pt->pt_pid = pid;
 SLIST_INSERT_HEAD(&args->pa_targets, pt, pt_next);


 if (read(pmcstat_sockpair[PARENTSOCKET], &token, 1) < 0)
  err(EX_OSERR, "ERROR (parent): cannot read token");

 return;
}
