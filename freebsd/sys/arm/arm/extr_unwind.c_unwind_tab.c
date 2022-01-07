
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct unwind_state {scalar_t__* registers; int* insn; int byte; int entries; scalar_t__ start_pc; int update_mask; } ;


 int ENTRY_ARM_LU16 ;
 int ENTRY_ARM_SU16 ;
 int ENTRY_MASK ;
 size_t LR ;
 size_t PC ;
 int db_printf (char*,int) ;
 scalar_t__ unwind_exec_insn (struct unwind_state*) ;

__attribute__((used)) static int
unwind_tab(struct unwind_state *state)
{
 uint32_t entry;


 state->registers[PC] = 0;


 entry = *state->insn & ENTRY_MASK;

 if (entry == ENTRY_ARM_SU16) {
  state->byte = 2;
  state->entries = 1;
 } else if (entry == ENTRY_ARM_LU16) {
  state->byte = 1;
  state->entries = ((*state->insn >> 16) & 0xFF) + 1;
 } else {



  return 1;
 }

 while (state->entries > 0) {
  if (unwind_exec_insn(state) != 0)
   return 1;
 }




 if (state->registers[PC] == 0) {
  state->registers[PC] = state->registers[LR];




  if (state->start_pc != state->registers[PC])
   state->update_mask |= 1 << PC;
 }

 return 0;
}
