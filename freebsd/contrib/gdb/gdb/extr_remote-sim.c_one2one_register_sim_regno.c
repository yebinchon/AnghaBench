
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;
 int gdb_assert (int) ;

int
one2one_register_sim_regno (int regnum)
{

  gdb_assert (regnum >= 0 && regnum < NUM_REGS);
  return regnum;
}
