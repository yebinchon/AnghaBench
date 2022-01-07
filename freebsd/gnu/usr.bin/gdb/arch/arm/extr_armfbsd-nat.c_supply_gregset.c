
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_pc; int r_cpsr; int r_lr; int r_sp; int * r; } ;
typedef int CORE_ADDR ;


 int ARM_A1_REGNUM ;
 int ARM_LR_REGNUM ;
 int ARM_PC_REGNUM ;
 int ARM_PS_REGNUM ;
 int ARM_SP_REGNUM ;
 scalar_t__ arm_apcs_32 ;
 int supply_register (int,char*) ;

void
supply_gregset (struct reg *gregset)
{
  int regno;
  CORE_ADDR r_pc;


  for (regno = ARM_A1_REGNUM; regno < ARM_SP_REGNUM; regno++)
    supply_register (regno, (char *) &gregset->r[regno]);

  supply_register (ARM_SP_REGNUM, (char *) &gregset->r_sp);
  supply_register (ARM_LR_REGNUM, (char *) &gregset->r_lr);
  supply_register (ARM_PC_REGNUM, (char *) &gregset->r_pc);

  if (arm_apcs_32)
    supply_register (ARM_PS_REGNUM, (char *) &gregset->r_cpsr);
  else
    supply_register (ARM_PS_REGNUM, (char *) &gregset->r_pc);
}
