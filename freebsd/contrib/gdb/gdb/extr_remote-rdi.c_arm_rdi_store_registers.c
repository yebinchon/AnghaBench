
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_PC_REGNUM ;
 int ARM_PS_REGNUM ;
 int NUM_REGS ;
 int RDIError_NoError ;
 int RDIReg_CPSR ;
 int RDIReg_PC ;
 int angel_RDI_CPUwrite (int,int,unsigned long*) ;
 int deprecated_read_register_gen (int,char*) ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;
 int store_unsigned_integer (unsigned long*,int,unsigned long) ;

__attribute__((used)) static void
arm_rdi_store_registers (int regno)
{
  int rslt, rdi_regmask;


  unsigned long rawreg[3], rawerreg[3];

  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 arm_rdi_store_registers (regno);
    }
  else
    {
      deprecated_read_register_gen (regno, (char *) rawreg);

      store_unsigned_integer (rawerreg, 4, rawreg[0]);

      if (regno == ARM_PC_REGNUM)
 rdi_regmask = RDIReg_PC;
      else if (regno == ARM_PS_REGNUM)
 rdi_regmask = RDIReg_CPSR;
      else if (regno < 0 || regno > 15)
 return;
      else
 rdi_regmask = 1 << regno;

      rslt = angel_RDI_CPUwrite (255, rdi_regmask, rawerreg);
      if (rslt != RDIError_NoError)
 {
   printf_filtered ("RDI_CPUwrite: %s\n", rdi_error_message (rslt));
 }
    }
}
