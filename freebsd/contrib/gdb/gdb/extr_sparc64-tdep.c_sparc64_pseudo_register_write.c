
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int ULONGEST ;





 int SPARC64_D0_REGNUM ;
 int SPARC64_D30_REGNUM ;
 int SPARC64_D32_REGNUM ;
 int SPARC64_D62_REGNUM ;
 int SPARC64_F32_REGNUM ;
 int SPARC64_NUM_REGS ;

 int SPARC64_Q0_REGNUM ;
 int SPARC64_Q28_REGNUM ;
 int SPARC64_Q32_REGNUM ;
 int SPARC64_Q60_REGNUM ;
 int SPARC64_STATE_REGNUM ;
 int SPARC_F0_REGNUM ;
 int extract_unsigned_integer (void const*,int) ;
 int gdb_assert (int) ;
 int regcache_raw_read_unsigned (struct regcache*,int ,int*) ;
 int regcache_raw_write (struct regcache*,int,char const*) ;
 int regcache_raw_write_unsigned (struct regcache*,int ,int) ;

__attribute__((used)) static void
sparc64_pseudo_register_write (struct gdbarch *gdbarch,
          struct regcache *regcache,
          int regnum, const void *buf)
{
  gdb_assert (regnum >= SPARC64_NUM_REGS);

  if (regnum >= SPARC64_D0_REGNUM && regnum <= SPARC64_D30_REGNUM)
    {
      regnum = SPARC_F0_REGNUM + 2 * (regnum - SPARC64_D0_REGNUM);
      regcache_raw_write (regcache, regnum, buf);
      regcache_raw_write (regcache, regnum + 1, ((const char *)buf) + 4);
    }
  else if (regnum >= SPARC64_D32_REGNUM && regnum <= SPARC64_D62_REGNUM)
    {
      regnum = SPARC64_F32_REGNUM + (regnum - SPARC64_D32_REGNUM);
      regcache_raw_write (regcache, regnum, buf);
    }
  else if (regnum >= SPARC64_Q0_REGNUM && regnum <= SPARC64_Q28_REGNUM)
    {
      regnum = SPARC_F0_REGNUM + 4 * (regnum - SPARC64_Q0_REGNUM);
      regcache_raw_write (regcache, regnum, buf);
      regcache_raw_write (regcache, regnum + 1, ((const char *)buf) + 4);
      regcache_raw_write (regcache, regnum + 2, ((const char *)buf) + 8);
      regcache_raw_write (regcache, regnum + 3, ((const char *)buf) + 12);
    }
  else if (regnum >= SPARC64_Q32_REGNUM && regnum <= SPARC64_Q60_REGNUM)
    {
      regnum = SPARC64_F32_REGNUM + 2 * (regnum - SPARC64_Q32_REGNUM);
      regcache_raw_write (regcache, regnum, buf);
      regcache_raw_write (regcache, regnum + 1, ((const char *)buf) + 8);
    }
  else if (regnum == 129
    || regnum == 128
    || regnum == 131
    || regnum == 130)
    {
      ULONGEST state, bits;

      regcache_raw_read_unsigned (regcache, SPARC64_STATE_REGNUM, &state);
      bits = extract_unsigned_integer (buf, 8);
      switch (regnum)
 {
 case 129:
   state |= ((bits & ((1 << 5) - 1)) << 0);
   break;
 case 128:
   state |= ((bits & ((1 << 12) - 1)) << 8);
   break;
 case 131:
   state |= ((bits & ((1 << 8) - 1)) << 24);
   break;
 case 130:
   state |= ((bits & ((1 << 8) - 1)) << 32);
   break;
 }
      regcache_raw_write_unsigned (regcache, SPARC64_STATE_REGNUM, state);
    }
}
