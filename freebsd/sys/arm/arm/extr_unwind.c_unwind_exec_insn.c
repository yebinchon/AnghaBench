
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct unwind_state {unsigned int* registers; scalar_t__ entries; int update_mask; } ;


 size_t FP ;
 unsigned int INSN_FINISH ;
 unsigned int INSN_POP_COUNT ;
 unsigned int INSN_POP_COUNT_MASK ;
 unsigned int INSN_POP_MASKED ;
 unsigned int INSN_POP_REGS ;
 unsigned int INSN_POP_TYPE_MASK ;
 unsigned int INSN_STD_DATA_MASK ;
 unsigned int INSN_STD_MASK ;
 unsigned int INSN_VSP_DEC ;
 unsigned int INSN_VSP_INC ;
 unsigned int INSN_VSP_LARGE_INC ;
 unsigned int INSN_VSP_LARGE_INC_MASK ;
 unsigned int INSN_VSP_MASK ;
 unsigned int INSN_VSP_REG ;
 unsigned int INSN_VSP_SIZE_MASK ;
 size_t LR ;
 size_t PC ;
 size_t SP ;
 int db_printf (char*,int,...) ;
 unsigned int unwind_exec_read_byte (struct unwind_state*) ;

__attribute__((used)) static int
unwind_exec_insn(struct unwind_state *state)
{
 unsigned int insn;
 uint32_t *vsp = (uint32_t *)state->registers[SP];
 int update_vsp = 0;


 if (state->entries == 0)
  return 1;


 insn = unwind_exec_read_byte(state);

 if ((insn & INSN_VSP_MASK) == INSN_VSP_INC) {
  state->registers[SP] += ((insn & INSN_VSP_SIZE_MASK) << 2) + 4;

 } else if ((insn & INSN_VSP_MASK) == INSN_VSP_DEC) {
  state->registers[SP] -= ((insn & INSN_VSP_SIZE_MASK) << 2) + 4;

 } else if ((insn & INSN_STD_MASK) == INSN_POP_MASKED) {
  unsigned int mask, reg;


  mask = unwind_exec_read_byte(state);
  mask |= (insn & INSN_STD_DATA_MASK) << 8;


  if (mask == 0)
   return 1;


  update_vsp = 1;


  for (reg = 4; mask && reg < 16; mask >>= 1, reg++) {
   if (mask & 1) {
    state->registers[reg] = *vsp++;
    state->update_mask |= 1 << reg;


    if (reg == SP)
     update_vsp = 0;
   }
  }

 } else if ((insn & INSN_STD_MASK) == INSN_VSP_REG &&
     ((insn & INSN_STD_DATA_MASK) != 13) &&
     ((insn & INSN_STD_DATA_MASK) != 15)) {

  state->registers[SP] =
      state->registers[insn & INSN_STD_DATA_MASK];

 } else if ((insn & INSN_STD_MASK) == INSN_POP_COUNT) {
  unsigned int count, reg;


  count = insn & INSN_POP_COUNT_MASK;


  update_vsp = 1;


  for (reg = 4; reg <= 4 + count; reg++) {
   state->registers[reg] = *vsp++;
   state->update_mask |= 1 << reg;
  }


  if ((insn & INSN_POP_TYPE_MASK) != 0) {
   state->registers[14] = *vsp++;
  }

 } else if (insn == INSN_FINISH) {

  state->entries = 0;

 } else if (insn == INSN_POP_REGS) {
  unsigned int mask, reg;

  mask = unwind_exec_read_byte(state);
  if (mask == 0 || (mask & 0xf0) != 0)
   return 1;


  update_vsp = 1;


  for (reg = 0; mask && reg < 4; mask >>= 1, reg++) {
   if (mask & 1) {
    state->registers[reg] = *vsp++;
    state->update_mask |= 1 << reg;
   }
  }

 } else if ((insn & INSN_VSP_LARGE_INC_MASK) == INSN_VSP_LARGE_INC) {
  unsigned int uleb128;


  uleb128 = unwind_exec_read_byte(state);

  state->registers[SP] += 0x204 + (uleb128 << 2);

 } else {




  return 1;
 }

 if (update_vsp) {
  state->registers[SP] = (uint32_t)vsp;
 }







 return 0;
}
