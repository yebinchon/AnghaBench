
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_mcs_state {int vpid; int sense; } ;
struct ck_barrier_mcs {int tid; } ;


 int ck_pr_faa_uint (int *,int) ;

void
ck_barrier_mcs_subscribe(struct ck_barrier_mcs *barrier, struct ck_barrier_mcs_state *state)
{

 state->sense = ~0;
 state->vpid = ck_pr_faa_uint(&barrier->tid, 1);
 return;
}
