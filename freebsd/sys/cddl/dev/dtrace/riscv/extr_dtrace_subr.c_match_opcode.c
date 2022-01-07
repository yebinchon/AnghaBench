
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
match_opcode(uint32_t insn, int match, int mask)
{

 if (((insn ^ match) & mask) == 0)
  return (1);

 return (0);
}
