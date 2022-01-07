
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int sparc32obsd_page_size ;
 unsigned long sparc_fetch_instruction (int) ;

__attribute__((used)) static int
sparc32obsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_pc = (pc & ~(sparc32obsd_page_size - 1));
  unsigned long insn;

  if (name)
    return 0;


  insn = sparc_fetch_instruction (start_pc + 0xec);
  if (insn != 0x83e82067)
    return 0;


  insn = sparc_fetch_instruction (start_pc + 0xf4);
  if (insn != 0x91d02000)
    return 0;

  return 1;
}
