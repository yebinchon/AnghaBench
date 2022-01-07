
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_rflags; } ;
typedef int register_t ;



int
pt_reg_sstep(struct reg *reg, int step)
{
 register_t old;

 old = reg->r_rflags;
 if (step)
  reg->r_rflags |= 0x0100;
 else
  reg->r_rflags &= ~0x0100;
 return (old != reg->r_rflags);
}
