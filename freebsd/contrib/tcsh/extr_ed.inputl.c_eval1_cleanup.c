
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eval1_state {int evalp; int evalvec; } ;


 scalar_t__ doneinp ;
 int evalp ;
 int evalvec ;

__attribute__((used)) static void
eval1_cleanup(void *xstate)
{
    struct eval1_state *state;

    state = xstate;
    evalvec = state->evalvec;
    evalp = state->evalp;
    doneinp = 0;
}
