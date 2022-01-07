
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t NUM_REGS ;
 int fault_code ;
 int memcpy (int ,int*,int) ;
 int saved_regs ;

save_registers (int firstreg)
{
  memcpy (saved_regs, &firstreg, sizeof saved_regs);
  fault_code = (&firstreg)[NUM_REGS];
}
