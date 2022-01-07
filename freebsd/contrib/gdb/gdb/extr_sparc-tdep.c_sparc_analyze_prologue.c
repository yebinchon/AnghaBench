
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_frame_cache {scalar_t__ frameless_p; } ;
struct gdbarch_tdep {scalar_t__ plt_entry_size; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ X_I (unsigned long) ;
 int X_OP (unsigned long) ;
 int X_OP2 (unsigned long) ;
 int X_OP3 (unsigned long) ;
 int X_RD (unsigned long) ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ in_plt_section (scalar_t__,int *) ;
 unsigned long sparc_fetch_instruction (scalar_t__) ;

CORE_ADDR
sparc_analyze_prologue (CORE_ADDR pc, CORE_ADDR current_pc,
   struct sparc_frame_cache *cache)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  unsigned long insn;
  int offset = 0;
  int dest = -1;

  if (current_pc <= pc)
    return current_pc;
  if (tdep->plt_entry_size > 0 && in_plt_section (current_pc, ((void*)0)))
    pc = current_pc - ((current_pc - pc) % tdep->plt_entry_size);

  insn = sparc_fetch_instruction (pc);


  if (X_OP (insn) == 0 && X_OP2 (insn) == 0x04)
    {
      dest = X_RD (insn);
      offset += 4;

      insn = sparc_fetch_instruction (pc + 4);
    }


  if (X_OP (insn) == 2 && X_I (insn)
      && (X_RD (insn) == 1 || X_RD (insn) == dest))
    {
      offset += 4;

      insn = sparc_fetch_instruction (pc + 8);
    }


  if (X_OP (insn) == 2 && X_OP3 (insn) == 0x3c)
    {
      cache->frameless_p = 0;
      return pc + offset + 4;
    }

  return pc;
}
