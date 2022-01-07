
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_cpsr; int r_pc; int r_lr; int r_sp; int * r; } ;


 int ARM_A1_REGNUM ;
 int ARM_LR_REGNUM ;
 int ARM_PC_REGNUM ;
 int ARM_PS_REGNUM ;
 int ARM_SP_REGNUM ;
 int regcache_collect (int,int *) ;

void
fill_gregset (struct reg *gregset, int regno)
{
  int i;

  for (i = ARM_A1_REGNUM; i < ARM_SP_REGNUM; i++)
    if ((regno == -1 || regno == i))
      regcache_collect (i, &gregset->r[i]);
  if (regno == -1 || regno == ARM_SP_REGNUM)
      regcache_collect (ARM_SP_REGNUM, &gregset->r_sp);
  if (regno == -1 || regno == ARM_LR_REGNUM)
      regcache_collect (ARM_LR_REGNUM, &gregset->r_lr);
  if (regno == -1 || regno == ARM_PC_REGNUM)
      regcache_collect (ARM_PC_REGNUM, &gregset->r_pc);
  if (regno == -1 || regno == ARM_PS_REGNUM)
      regcache_collect (ARM_PS_REGNUM, &gregset->r_cpsr);
}
