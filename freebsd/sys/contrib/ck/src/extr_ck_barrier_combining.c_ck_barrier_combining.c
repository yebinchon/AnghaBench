
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_state {int sense; } ;
struct ck_barrier_combining_group {int dummy; } ;
struct ck_barrier_combining {int dummy; } ;


 int ck_barrier_combining_aux (struct ck_barrier_combining*,struct ck_barrier_combining_group*,int ) ;

void
ck_barrier_combining(struct ck_barrier_combining *barrier,
    struct ck_barrier_combining_group *tnode,
    struct ck_barrier_combining_state *state)
{

 ck_barrier_combining_aux(barrier, tnode, state->sense);


 state->sense = ~state->sense;
 return;
}
