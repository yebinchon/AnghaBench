
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_frame_saved_reg {int addr; int realreg; } ;
typedef int LONGEST ;


 int REG_VALUE ;

void
trad_frame_set_value (struct trad_frame_saved_reg this_saved_regs[],
        int regnum, LONGEST val)
{


  this_saved_regs[regnum].realreg = REG_VALUE;
  this_saved_regs[regnum].addr = val;
}
