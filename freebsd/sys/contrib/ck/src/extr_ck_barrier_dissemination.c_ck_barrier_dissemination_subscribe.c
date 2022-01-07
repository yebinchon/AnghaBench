
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_dissemination_state {int tid; int sense; scalar_t__ parity; } ;
struct ck_barrier_dissemination {int tid; } ;


 int ck_pr_faa_uint (int *,int) ;

void
ck_barrier_dissemination_subscribe(struct ck_barrier_dissemination *barrier,
    struct ck_barrier_dissemination_state *state)
{

 state->parity = 0;
 state->sense = ~0;
 state->tid = ck_pr_faa_uint(&barrier->tid, 1);
 return;
}
