
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_flags; int p_jobid; int p_command; int p_procid; struct process* p_friends; } ;
typedef char* pid_t ;
typedef char Char ;


 int CGETS (int,int,char*) ;
 int ERR_BADJOB ;
 int ERR_JOBARGS ;
 int ERR_NAME ;
 int ERR_SILENT ;
 scalar_t__ Isdigit (char) ;
 int PRUNNING ;

 int SIGHUP ;

 int SIGTERM ;



 int blk_cleanup ;
 int cleanup_push (char**,int ) ;
 int cleanup_until (char**) ;
 int disabled_cleanup ;
 int errno ;
 char** glob_all_or_error (char**) ;
 scalar_t__ kill (char*,int const) ;
 scalar_t__ killpg (int ,int const) ;
 char* pchild_disabled ;
 struct process* pfind (char*) ;
 char* pintr_disabled ;
 int pstart (struct process*,int ) ;
 int quote (char*) ;
 scalar_t__ setintr ;
 int short2str (char*) ;
 int stderror (int,...) ;
 int strerror (int ) ;
 char* strtol (int ,char**,int) ;
 char* strtoul (int ,char**,int ) ;
 int xprintf (char*,char*,...) ;

__attribute__((used)) static void
pkill(Char **v, int signum)
{
    struct process *pp, *np;
    int jobflags = 0, err1 = 0;
    pid_t pid;
    Char *cp, **vp, **globbed;


    for (vp = v; vp && *vp; vp++)
 if (**vp == '%')
     (void) quote(*vp);

    v = glob_all_or_error(v);
    globbed = v;
    cleanup_push(globbed, blk_cleanup);

    pchild_disabled++;
    cleanup_push(&pchild_disabled, disabled_cleanup);
    if (setintr) {
 pintr_disabled++;
 cleanup_push(&pintr_disabled, disabled_cleanup);
    }

    while (v && (cp = *v)) {
 if (*cp == '%') {
     np = pp = pfind(cp);
     do
  jobflags |= np->p_flags;
     while ((np = np->p_friends) != pp);
     if (killpg(pp->p_jobid, signum) < 0) {
  xprintf("%S: %s\n", cp, strerror(errno));
  err1++;
     }




 }
 else if (!(Isdigit(*cp) || *cp == '-'))
     stderror(ERR_NAME | ERR_JOBARGS);
 else {
     char *ep;

     pid = strtol(short2str(cp), &ep, 10);



     if (*ep)
  stderror(ERR_NAME | ERR_JOBARGS);
     else if (kill(pid, signum) < 0) {
  xprintf("%d: %s\n", pid, strerror(errno));
  err1++;
  goto cont;
     }




 }
cont:
 v++;
    }
    cleanup_until(&pchild_disabled);
    if (err1)
 stderror(ERR_SILENT);
}
