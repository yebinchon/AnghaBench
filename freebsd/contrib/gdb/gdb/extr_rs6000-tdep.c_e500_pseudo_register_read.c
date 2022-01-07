
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_ev0_regnum; } ;
struct gdbarch {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int MAX_REGISTER_SIZE ;
 scalar_t__ TARGET_BYTE_ORDER ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int memcpy (char*,char*,int) ;
 int regcache_raw_read (struct regcache*,int,char*) ;

__attribute__((used)) static void
e500_pseudo_register_read (struct gdbarch *gdbarch, struct regcache *regcache,
      int reg_nr, void *buffer)
{
  int base_regnum;
  int offset = 0;
  char temp_buffer[MAX_REGISTER_SIZE];
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  if (reg_nr >= tdep->ppc_gp0_regnum
      && reg_nr <= tdep->ppc_gplast_regnum)
    {
      base_regnum = reg_nr - tdep->ppc_gp0_regnum + tdep->ppc_ev0_regnum;



      regcache_raw_read (regcache, base_regnum, temp_buffer);
      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
 offset = 4;
      memcpy ((char *) buffer, temp_buffer + offset, 4);
    }
}
