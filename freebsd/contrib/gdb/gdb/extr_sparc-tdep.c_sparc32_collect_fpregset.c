
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;


 int SPARC32_FSR_REGNUM ;
 int SPARC_F0_REGNUM ;
 int regcache_raw_collect (struct regcache const*,int,char*) ;

void
sparc32_collect_fpregset (const struct regcache *regcache,
     int regnum, void *fpregs)
{
  char *regs = fpregs;
  int i;

  for (i = 0; i < 32; i++)
    {
      if (regnum == (SPARC_F0_REGNUM + i) || regnum == -1)
 regcache_raw_collect (regcache, SPARC_F0_REGNUM + i, regs + (i * 4));
    }

  if (regnum == SPARC32_FSR_REGNUM || regnum == -1)
    regcache_raw_collect (regcache, SPARC32_FSR_REGNUM, regs + (32 * 4) + 4);
}
