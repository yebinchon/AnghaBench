
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct unwind_state {unsigned int* insn; int start_pc; int * registers; scalar_t__ update_mask; } ;
struct unwind_idx {unsigned int insn; } ;


 unsigned int EXIDX_CANTUNWIND ;
 size_t PC ;
 scalar_t__ expand_prel31 (unsigned int) ;
 struct unwind_idx* find_index (int ,int) ;
 int unwind_tab (struct unwind_state*) ;

int
unwind_stack_one(struct unwind_state *state, int can_lock)
{
 struct unwind_idx *index;
 int finished;


 state->update_mask = 0;


 state->start_pc = state->registers[PC];


 index = find_index(state->start_pc, can_lock);

 finished = 0;
 if (index->insn != EXIDX_CANTUNWIND) {
  if (index->insn & (1U << 31)) {

   state->insn = &index->insn;
  } else {

   state->insn = (uint32_t *)
       ((uintptr_t)&index->insn +
        expand_prel31(index->insn));
  }

  finished = unwind_tab(state);
 }


 if (index->insn == EXIDX_CANTUNWIND)
  finished = 1;

 return (finished);
}
