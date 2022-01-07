
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_frame_saved_reg {scalar_t__ realreg; int addr; } ;



int
trad_frame_realreg_p (struct trad_frame_saved_reg this_saved_regs[],
        int regnum)
{
  return (this_saved_regs[regnum].realreg >= 0
   && this_saved_regs[regnum].addr == -1);
}
