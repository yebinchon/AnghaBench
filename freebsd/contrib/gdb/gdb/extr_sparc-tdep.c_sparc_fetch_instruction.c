
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int CORE_ADDR ;


 scalar_t__ target_read_memory (int ,unsigned char*,int) ;

unsigned long
sparc_fetch_instruction (CORE_ADDR pc)
{
  unsigned char buf[4];
  unsigned long insn;
  int i;


  if (target_read_memory (pc, buf, sizeof (buf)))
    return 0;

  insn = 0;
  for (i = 0; i < sizeof (buf); i++)
    insn = (insn << 8) | buf[i];
  return insn;
}
