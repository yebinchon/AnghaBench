
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct unwind_state {int update_mask; int * registers; int start_pc; } ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ c_db_sym_t ;


 scalar_t__ C_DB_SYM_NULL ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 size_t FP ;
 size_t LR ;
 int PC ;
 size_t SP ;
 int VM_MIN_KERNEL_ADDRESS ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;
 scalar_t__ db_search_symbol (int ,int ,scalar_t__*) ;
 int db_symbol_values (scalar_t__,char const**,scalar_t__*) ;
 int unwind_stack_one (struct unwind_state*,int) ;

__attribute__((used)) static void
db_stack_trace_cmd(struct unwind_state *state)
{
 const char *name;
 db_expr_t value;
 db_expr_t offset;
 c_db_sym_t sym;
 u_int reg, i;
 char *sep;
 uint16_t upd_mask;
 bool finished;

 finished = 0;
 while (!finished) {
  finished = unwind_stack_one(state, 1);


  sym = db_search_symbol(state->start_pc, DB_STGY_ANY, &offset);
  if (sym == C_DB_SYM_NULL) {
   value = 0;
   name = "(null)";
  } else
   db_symbol_values(sym, &name, &value);
  db_printf("%s() at ", name);
  db_printsym(state->start_pc, DB_STGY_PROC);
  db_printf("\n");
  db_printf("\t pc = 0x%08x  lr = 0x%08x (", state->start_pc,
      state->registers[LR]);
  db_printsym(state->registers[LR], DB_STGY_PROC);
  db_printf(")\n");
  db_printf("\t sp = 0x%08x  fp = 0x%08x",
      state->registers[SP], state->registers[FP]);


  upd_mask = state->update_mask &
      ~((1 << SP) | (1 << FP) | (1 << LR) | (1 << PC));
  sep = "\n\t";
  for (i = 0, reg = 0; upd_mask != 0; upd_mask >>= 1, reg++) {
   if ((upd_mask & 1) != 0) {
    db_printf("%s%sr%d = 0x%08x", sep,
        (reg < 10) ? " " : "", reg,
        state->registers[reg]);
    i++;
    if (i == 2) {
     sep = "\n\t";
     i = 0;
    } else
     sep = " ";

   }
  }
  db_printf("\n");

  if (finished)
   break;
  if (state->registers[PC] < VM_MIN_KERNEL_ADDRESS) {
   db_printf("Unable to unwind into user mode\n");
   finished = 1;
  } else if (state->update_mask == 0) {
   db_printf("Unwind failure (no registers changed)\n");
   finished = 1;
  }
 }
}
