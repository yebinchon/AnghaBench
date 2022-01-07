
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_state {scalar_t__ s; scalar_t__ theend; } ;



__attribute__((used)) static int
sn_reserve (struct snprintf_state *state, size_t n)
{
    return state->s + n > state->theend;
}
