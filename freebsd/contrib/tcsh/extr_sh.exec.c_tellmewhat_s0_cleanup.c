
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tellmewhat_s0_cleanup {int val; int * dest; } ;



__attribute__((used)) static void
tellmewhat_s0_cleanup(void *xstate)
{
    struct tellmewhat_s0_cleanup *state;

    state = xstate;
    *state->dest = state->val;
}
