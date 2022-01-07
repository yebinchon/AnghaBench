
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPARC32_FSR_REGNUM ;
 int SPARC_F0_REGNUM ;
 int SPARC_F31_REGNUM ;

int
sparc32_fpregset_supplies_p (int regnum)
{

  if (regnum >= SPARC_F0_REGNUM && regnum <= SPARC_F31_REGNUM)
    return 1;


  if (regnum == SPARC32_FSR_REGNUM)
    return 1;

  return 0;
}
