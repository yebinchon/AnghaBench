
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_tournament_state {size_t vpid; int sense; } ;
struct ck_barrier_tournament_round {int role; int opponent; int flag; } ;
struct ck_barrier_tournament {int size; int rounds; } ;







 int ck_pr_fence_memory () ;
 struct ck_barrier_tournament_round** ck_pr_load_ptr (int *) ;
 int ck_pr_load_uint (int *) ;
 int ck_pr_stall () ;
 int ck_pr_store_uint (int ,int ) ;

void
ck_barrier_tournament(struct ck_barrier_tournament *barrier,
    struct ck_barrier_tournament_state *state)
{
 struct ck_barrier_tournament_round **rounds = ck_pr_load_ptr(&barrier->rounds);
 int round = 1;

 if (barrier->size == 1)
  return;

 for (;; ++round) {
  switch (rounds[state->vpid][round].role) {
  case 132:
   break;
  case 131:




   while (ck_pr_load_uint(&rounds[state->vpid][round].flag) != state->sense)
    ck_pr_stall();

   ck_pr_store_uint(rounds[state->vpid][round].opponent, state->sense);
   goto wakeup;
  case 130:

   break;
  case 129:




   ck_pr_store_uint(rounds[state->vpid][round].opponent, state->sense);
   while (ck_pr_load_uint(&rounds[state->vpid][round].flag) != state->sense)
    ck_pr_stall();

   goto wakeup;
  case 128:




   while (ck_pr_load_uint(&rounds[state->vpid][round].flag) != state->sense)
    ck_pr_stall();
   break;
  }
 }

wakeup:
 for (round -= 1 ;; --round) {
  switch (rounds[state->vpid][round].role) {
  case 132:
   break;
  case 131:

   break;
  case 130:
   goto leave;
   break;
  case 129:

   break;
  case 128:




   ck_pr_store_uint(rounds[state->vpid][round].opponent, state->sense);
   break;
  }
 }

leave:
 ck_pr_fence_memory();
 state->sense = ~state->sense;
 return;
}
