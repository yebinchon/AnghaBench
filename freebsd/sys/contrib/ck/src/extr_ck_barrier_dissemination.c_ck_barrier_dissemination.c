
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_barrier_dissemination_state {size_t tid; size_t parity; int sense; } ;
struct ck_barrier_dissemination {unsigned int size; TYPE_1__** flags; } ;
struct TYPE_2__ {unsigned int* pflag; unsigned int tflag; } ;


 int ck_pr_fence_acquire () ;
 int ck_pr_load_uint (unsigned int*) ;
 int ck_pr_stall () ;
 int ck_pr_store_uint (unsigned int*,int ) ;

void
ck_barrier_dissemination(struct ck_barrier_dissemination *barrier,
    struct ck_barrier_dissemination_state *state)
{
 unsigned int i;
 unsigned int size = barrier->size;

 for (i = 0; i < size; ++i) {
  unsigned int *pflag, *tflag;

  pflag = barrier[state->tid].flags[state->parity][i].pflag;
  tflag = &barrier[state->tid].flags[state->parity][i].tflag;


  ck_pr_store_uint(pflag, state->sense);


  while (ck_pr_load_uint(tflag) != state->sense)
   ck_pr_stall();
 }







 if (state->parity == 1)
  state->sense = ~state->sense;

 state->parity = 1 - state->parity;

 ck_pr_fence_acquire();
 return;
}
