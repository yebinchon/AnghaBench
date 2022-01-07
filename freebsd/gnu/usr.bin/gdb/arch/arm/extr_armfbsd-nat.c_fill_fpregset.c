
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int fpr_fpsr; int * fpr; } ;


 int ARM_F0_REGNUM ;
 int ARM_F7_REGNUM ;
 int ARM_FPS_REGNUM ;
 int current_regcache ;
 int regcache_raw_supply (int ,int,int *) ;

void
fill_fpregset (struct fpreg *fparegset, int regno)
{
  int i;

  for (i = ARM_F0_REGNUM; i <= ARM_F7_REGNUM; i++)
    if (regno == -1 || regno == i)
      regcache_raw_supply(current_regcache, i,
   &fparegset->fpr[i - ARM_F0_REGNUM]);
  if (regno == -1 || regno == ARM_FPS_REGNUM)
    regcache_raw_supply(current_regcache, ARM_FPS_REGNUM,
 &fparegset->fpr_fpsr);
}
