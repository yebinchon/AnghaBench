
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execash_state {int OLDSTD; int saveSTD; int SHDIAG; int saveDIAG; int SHOUT; int saveOUT; int SHIN; int saveIN; int didfds; int didcch; int sigterm; int sigquit; int sigint; } ;


 int OLDSTD ;
 int SHDIAG ;
 int SHIN ;
 int SHOUT ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int close_on_exec (int ,int) ;
 int didcch ;
 int didfds ;
 int dmove (int ,int ) ;
 scalar_t__ doneinp ;
 int sigaction (int ,int *,int *) ;
 int xclose (int ) ;

__attribute__((used)) static void
execash_cleanup(void *xstate)
{
    struct execash_state *state;

    state = xstate;
    sigaction(SIGINT, &state->sigint, ((void*)0));
    sigaction(SIGQUIT, &state->sigquit, ((void*)0));
    sigaction(SIGTERM, &state->sigterm, ((void*)0));

    doneinp = 0;

    didcch = state->didcch;

    didfds = state->didfds;
    xclose(SHIN);
    xclose(SHOUT);
    xclose(SHDIAG);
    xclose(OLDSTD);
    close_on_exec(SHIN = dmove(state->saveIN, state->SHIN), 1);
    close_on_exec(SHOUT = dmove(state->saveOUT, state->SHOUT), 1);
    close_on_exec(SHDIAG = dmove(state->saveDIAG, state->SHDIAG), 1);
    close_on_exec(OLDSTD = dmove(state->saveSTD, state->OLDSTD), 1);
}
