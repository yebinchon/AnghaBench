
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct unwind_state {int* insn; int byte; int entries; } ;



__attribute__((used)) static uint8_t
unwind_exec_read_byte(struct unwind_state *state)
{
 uint8_t insn;


 insn = (*state->insn) >> (state->byte * 8);


 if (state->byte == 0) {
  state->byte = 3;
  state->insn++;
  state->entries--;
 } else
  state->byte--;

 return insn;
}
