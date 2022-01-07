
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
match_opcode(int opcode, const int opcodes[], size_t nops)
{
 int i;

 for (i = 0; i < nops; i++)
  if (opcode == opcodes[i])
   return (1);
 return (0);
}
