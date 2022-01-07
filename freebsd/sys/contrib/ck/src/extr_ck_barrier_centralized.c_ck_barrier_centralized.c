
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_centralized_state {unsigned int sense; } ;
struct ck_barrier_centralized {int sense; int value; } ;


 unsigned int ck_pr_faa_uint (int *,int) ;
 int ck_pr_fence_acquire () ;
 int ck_pr_fence_atomic_load () ;
 int ck_pr_fence_memory () ;
 unsigned int ck_pr_load_uint (int *) ;
 int ck_pr_stall () ;
 int ck_pr_store_uint (int *,unsigned int) ;

void
ck_barrier_centralized(struct ck_barrier_centralized *barrier,
    struct ck_barrier_centralized_state *state,
    unsigned int n_threads)
{
 unsigned int sense, value;







 sense = state->sense = ~state->sense;
 value = ck_pr_faa_uint(&barrier->value, 1);
 if (value == n_threads - 1) {
  ck_pr_store_uint(&barrier->value, 0);
  ck_pr_fence_memory();
  ck_pr_store_uint(&barrier->sense, sense);
  return;
 }

 ck_pr_fence_atomic_load();
 while (sense != ck_pr_load_uint(&barrier->sense))
  ck_pr_stall();

 ck_pr_fence_acquire();
 return;
}
