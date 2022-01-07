
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
typedef int bfd_byte ;
typedef scalar_t__ CORE_ADDR ;


 unsigned int S390_R0_REGNUM ;
 unsigned int S390_SP_REGNUM ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 scalar_t__ is_rs (int *,int ,unsigned int*,unsigned int*,int*,unsigned int*) ;
 scalar_t__ is_rsy (int *,int ,int ,unsigned int*,unsigned int*,int*,unsigned int*) ;
 int op1_lmg ;
 int op1_lmy ;
 int op2_lmg ;
 int op2_lmy ;
 int op_lm ;
 int read_memory_nobpt (scalar_t__,int *,int) ;

__attribute__((used)) static int
s390_in_function_epilogue_p (struct gdbarch *gdbarch, CORE_ADDR pc)
{
  int word_size = gdbarch_ptr_bit (gdbarch) / 8;
  bfd_byte insn[6];
  unsigned int r1, r3, b2;
  int d2;

  if (word_size == 4
      && !read_memory_nobpt (pc - 4, insn, 4)
      && is_rs (insn, op_lm, &r1, &r3, &d2, &b2)
      && r3 == S390_SP_REGNUM - S390_R0_REGNUM)
    return 1;

  if (word_size == 4
      && !read_memory_nobpt (pc - 6, insn, 6)
      && is_rsy (insn, op1_lmy, op2_lmy, &r1, &r3, &d2, &b2)
      && r3 == S390_SP_REGNUM - S390_R0_REGNUM)
    return 1;

  if (word_size == 8
      && !read_memory_nobpt (pc - 6, insn, 6)
      && is_rsy (insn, op1_lmg, op2_lmg, &r1, &r3, &d2, &b2)
      && r3 == S390_SP_REGNUM - S390_R0_REGNUM)
    return 1;

  return 0;
}
