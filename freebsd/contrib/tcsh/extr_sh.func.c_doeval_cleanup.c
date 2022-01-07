
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct doeval_state {scalar_t__ saveIN; scalar_t__ saveOUT; scalar_t__ saveDIAG; int SHDIAG; int SHOUT; int SHIN; scalar_t__ didfds; int didcch; int evalp; int evalvec; } ;


 scalar_t__ SHDIAG ;
 scalar_t__ SHIN ;
 scalar_t__ SHOUT ;
 int close_on_exec (scalar_t__,int) ;
 scalar_t__ dcopy (scalar_t__,int) ;
 int didcch ;
 scalar_t__ didfds ;
 scalar_t__ dmove (scalar_t__,int ) ;
 scalar_t__ doneinp ;
 int evalp ;
 int evalvec ;
 int xclose (scalar_t__) ;

__attribute__((used)) static void
doeval_cleanup(void *xstate)
{
    struct doeval_state *state;

    state = xstate;
    evalvec = state->evalvec;
    evalp = state->evalp;
    doneinp = 0;

    didcch = state->didcch;

    didfds = state->didfds;
    if (state->saveIN != SHIN)
 xclose(SHIN);
    if (state->saveOUT != SHOUT)
 xclose(SHOUT);
    if (state->saveDIAG != SHDIAG)
 xclose(SHDIAG);
    close_on_exec(SHIN = dmove(state->saveIN, state->SHIN), 1);
    close_on_exec(SHOUT = dmove(state->saveOUT, state->SHOUT), 1);
    close_on_exec(SHDIAG = dmove(state->saveDIAG, state->SHDIAG), 1);
    if (didfds) {
 close_on_exec(dcopy(SHIN, 0), 1);
 close_on_exec(dcopy(SHOUT, 1), 1);
 close_on_exec(dcopy(SHDIAG, 2), 1);
    }
}
