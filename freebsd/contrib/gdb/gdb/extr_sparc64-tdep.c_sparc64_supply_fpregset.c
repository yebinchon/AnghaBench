
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;


 int SPARC32_FSR_REGNUM ;
 int SPARC64_F32_REGNUM ;
 int SPARC64_FSR_REGNUM ;
 int SPARC_F0_REGNUM ;
 int current_gdbarch ;
 int gdbarch_ptr_bit (int ) ;
 int regcache_raw_supply (struct regcache*,int,char const*) ;

void
sparc64_supply_fpregset (struct regcache *regcache,
    int regnum, const void *fpregs)
{
  int sparc32 = (gdbarch_ptr_bit (current_gdbarch) == 32);
  const char *regs = fpregs;
  int i;

  for (i = 0; i < 32; i++)
    {
      if (regnum == (SPARC_F0_REGNUM + i) || regnum == -1)
 regcache_raw_supply (regcache, SPARC_F0_REGNUM + i, regs + (i * 4));
    }

  if (sparc32)
    {
      if (regnum == SPARC32_FSR_REGNUM || regnum == -1)
 regcache_raw_supply (regcache, SPARC32_FSR_REGNUM,
        regs + (32 * 4) + (16 * 8) + 4);
    }
  else
    {
      for (i = 0; i < 16; i++)
 {
   if (regnum == (SPARC64_F32_REGNUM + i) || regnum == -1)
     regcache_raw_supply (regcache, SPARC64_F32_REGNUM + i,
     regs + (32 * 4) + (i * 8));
 }

      if (regnum == SPARC64_FSR_REGNUM || regnum == -1)
 regcache_raw_supply (regcache, SPARC64_FSR_REGNUM,
        regs + (32 * 4) + (16 * 8));
    }
}
