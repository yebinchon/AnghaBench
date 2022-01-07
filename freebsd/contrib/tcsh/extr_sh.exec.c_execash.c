
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execash_state {int SHIN; int SHOUT; int SHDIAG; int OLDSTD; int saveIN; int saveOUT; int saveDIAG; int saveSTD; scalar_t__ didcch; scalar_t__ didfds; int sigterm; int sigquit; int sigint; } ;
struct command {int t_dcom; } ;
typedef int Char ;


 int OLDSTD ;
 int SHDIAG ;
 int SHIN ;
 int SHOUT ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int STRsavehist ;
 int USE (int **) ;
 int __nt_really_exec ;
 int * adrof (int ) ;
 scalar_t__ chkstop ;
 int cleanup_push (struct execash_state*,int ) ;
 int cleanup_until (struct execash_state*) ;
 int close_on_exec (int,int) ;
 int dcopy (int,int) ;
 scalar_t__ didcch ;
 scalar_t__ didfds ;
 int doexec (struct command*,int) ;
 int execash_cleanup ;
 scalar_t__ getpid () ;
 int lshift (int ,int) ;
 scalar_t__ mainpid ;
 int panystop (int ) ;
 int parintr ;
 int parterm ;
 int rechist (int *,int ) ;
 scalar_t__ setintr ;
 int shlvl (int) ;
 int sigaction (int ,int *,int *) ;

void
execash(Char **t, struct command *kp)
{
    struct execash_state state;

    USE(t);
    if (chkstop == 0 && setintr)
 panystop(0);




    rechist(((void*)0), adrof(STRsavehist) != ((void*)0));


    sigaction(SIGINT, &parintr, &state.sigint);
    sigaction(SIGQUIT, &parintr, &state.sigquit);
    sigaction(SIGTERM, &parterm, &state.sigterm);

    state.didfds = didfds;

    state.didcch = didcch;

    state.SHIN = SHIN;
    state.SHOUT = SHOUT;
    state.SHDIAG = SHDIAG;
    state.OLDSTD = OLDSTD;

    (void)close_on_exec (state.saveIN = dcopy(SHIN, -1), 1);
    (void)close_on_exec (state.saveOUT = dcopy(SHOUT, -1), 1);
    (void)close_on_exec (state.saveDIAG = dcopy(SHDIAG, -1), 1);
    (void)close_on_exec (state.saveSTD = dcopy(OLDSTD, -1), 1);

    lshift(kp->t_dcom, 1);

    (void)close_on_exec (SHIN = dcopy(0, -1), 1);
    (void)close_on_exec (SHOUT = dcopy(1, -1), 1);
    (void)close_on_exec (SHDIAG = dcopy(2, -1), 1);

    didcch = 0;

    didfds = 0;
    cleanup_push(&state, execash_cleanup);




    if (mainpid == getpid())
 shlvl(-1);



    doexec(kp, 1);

    cleanup_until(&state);
}
