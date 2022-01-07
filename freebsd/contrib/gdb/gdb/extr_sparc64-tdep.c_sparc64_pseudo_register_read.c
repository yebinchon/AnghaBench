
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
 int gdb_assert (int) ;
 int regcache_raw_read (struct regcache*,int,char*) ;
 int regcache_raw_read_unsigned (struct regcache*,int ,int*) ;
 int store_unsigned_integer (void*,int,int) ;

__attribute__((used)) static void
sparc64_pseudo_register_read (struct gdbarch *gdbarch,
         struct regcache *regcache,
         int regnum, void *buf)
{
  gdb_assert (regnum >= SPARC64_NUM_REGS);

  if (regnum >= SPARC64_D0_REGNUM && regnum <= SPARC64_D30_REGNUM)
    {
      regnum = SPARC_F0_REGNUM + 2 * (regnum - SPARC64_D0_REGNUM);
      regcache_raw_read (regcache, regnum, buf);
      regcache_raw_read (regcache, regnum + 1, ((char *)buf) + 4);
    }
  else if (regnum >= SPARC64_D32_REGNUM && regnum <= SPARC64_D62_REGNUM)
    {
      regnum = SPARC64_F32_REGNUM + (regnum - SPARC64_D32_REGNUM);
      regcache_raw_read (regcache, regnum, buf);
    }
  else if (regnum >= SPARC64_Q0_REGNUM && regnum <= SPARC64_Q28_REGNUM)
    {
      regnum = SPARC_F0_REGNUM + 4 * (regnum - SPARC64_Q0_REGNUM);
      regcache_raw_read (regcache, regnum, buf);
      regcache_raw_read (regcache, regnum + 1, ((char *)buf) + 4);
      regcache_raw_read (regcache, regnum + 2, ((char *)buf) + 8);
      regcache_raw_read (regcache, regnum + 3, ((char *)buf) + 12);
    }
  else if (regnum >= SPARC64_Q32_REGNUM && regnum <= SPARC64_Q60_REGNUM)
    {
      regnum = SPARC64_F32_REGNUM + 2 * (regnum - SPARC64_Q32_REGNUM);
      regcache_raw_read (regcache, regnum, buf);
      regcache_raw_read (regcache, regnum + 1, ((char *)buf) + 8);
    }
  else if (regnum == 129
    || regnum == 128
    || regnum == 131
    || regnum == 130)
    {
      ULONGEST state;

      regcache_raw_read_unsigned (regcache, SPARC64_STATE_REGNUM, &state);
      switch (regnum)
 {
 case 129:
   state = (state >> 0) & ((1 << 5) - 1);
   break;
 case 128:
   state = (state >> 8) & ((1 << 12) - 1);
   break;
 case 131:
   state = (state >> 24) & ((1 << 8) - 1);
   break;
 case 130:
   state = (state >> 32) & ((1 << 8) - 1);
   break;
 }
      store_unsigned_integer (buf, 8, state);
    }
}
