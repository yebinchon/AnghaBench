
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;


 int SPARC32_D0_REGNUM ;
 int SPARC32_D30_REGNUM ;
 int SPARC_F0_REGNUM ;
 int gdb_assert (int) ;
 int regcache_raw_read (struct regcache*,int,char*) ;

__attribute__((used)) static void
sparc32_pseudo_register_read (struct gdbarch *gdbarch,
         struct regcache *regcache,
         int regnum, void *buf)
{
  gdb_assert (regnum >= SPARC32_D0_REGNUM && regnum <= SPARC32_D30_REGNUM);

  regnum = SPARC_F0_REGNUM + 2 * (regnum - SPARC32_D0_REGNUM);
  regcache_raw_read (regcache, regnum, buf);
  regcache_raw_read (regcache, regnum + 1, ((char *)buf) + 4);
}
