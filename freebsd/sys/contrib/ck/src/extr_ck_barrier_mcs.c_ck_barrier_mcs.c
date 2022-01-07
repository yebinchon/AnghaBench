
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_mcs_state {size_t vpid; int sense; } ;
struct ck_barrier_mcs {int * children; int parentsense; int parent; int childnotready; } ;


 int ck_barrier_mcs_check_children (int ) ;
 int ck_barrier_mcs_reinitialize_children (struct ck_barrier_mcs*) ;
 int ck_pr_fence_memory () ;
 int ck_pr_load_uint (int *) ;
 int ck_pr_stall () ;
 int ck_pr_store_uint (int ,int ) ;

void
ck_barrier_mcs(struct ck_barrier_mcs *barrier,
    struct ck_barrier_mcs_state *state)
{





 while (ck_barrier_mcs_check_children(barrier[state->vpid].childnotready) == 0)
  ck_pr_stall();


 ck_barrier_mcs_reinitialize_children(&barrier[state->vpid]);


 ck_pr_store_uint(barrier[state->vpid].parent, 0);


 if (state->vpid != 0) {
  while (ck_pr_load_uint(&barrier[state->vpid].parentsense) != state->sense)
   ck_pr_stall();
 }


 ck_pr_store_uint(barrier[state->vpid].children[0], state->sense);
 ck_pr_store_uint(barrier[state->vpid].children[1], state->sense);
 state->sense = ~state->sense;
 ck_pr_fence_memory();
 return;
}
