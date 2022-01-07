
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_frame_saved_reg {int addr; int realreg; } ;


 int REG_UNKNOWN ;

void
trad_frame_set_unknown (struct trad_frame_saved_reg this_saved_regs[],
   int regnum)
{

  this_saved_regs[regnum].realreg = REG_UNKNOWN;
  this_saved_regs[regnum].addr = -1;
}
