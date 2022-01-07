
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassemble_info ;
typedef int bfd_vma ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int print_insn_big_powerpc (int ,int *) ;
 int print_insn_little_powerpc (int ,int *) ;

__attribute__((used)) static int
gdb_print_insn_powerpc (bfd_vma memaddr, disassemble_info *info)
{
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return print_insn_big_powerpc (memaddr, info);
  else
    return print_insn_little_powerpc (memaddr, info);
}
