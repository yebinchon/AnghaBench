
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {unsigned int r_eflags; } ;



int
pt_reg_sstep(struct reg *reg, int step)
{
 unsigned int old;

 old = reg->r_eflags;
 if (step)
  reg->r_eflags |= 0x0100;
 else
  reg->r_eflags &= ~0x0100;
 return (old != reg->r_eflags);
}
