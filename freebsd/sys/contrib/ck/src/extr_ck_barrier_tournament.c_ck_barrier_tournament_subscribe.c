
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_tournament_state {int vpid; int sense; } ;
struct ck_barrier_tournament {int tid; } ;


 int ck_pr_faa_uint (int *,int) ;

void
ck_barrier_tournament_subscribe(struct ck_barrier_tournament *barrier,
    struct ck_barrier_tournament_state *state)
{

 state->sense = ~0;
 state->vpid = ck_pr_faa_uint(&barrier->tid, 1);
 return;
}
