
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_F0_REGNUM ;
 int ARM_FPS_REGNUM ;
 int store_fp_register (int) ;
 int store_fp_regs () ;
 int store_register (int) ;
 int store_regs () ;

void
store_inferior_registers (int regno)
{
  if (regno >= 0)
    {
      if (regno < ARM_F0_REGNUM || regno > ARM_FPS_REGNUM)
 store_register (regno);
      else
 store_fp_register (regno);
    }
  else
    {
      store_regs ();
      store_fp_regs ();
    }
}
