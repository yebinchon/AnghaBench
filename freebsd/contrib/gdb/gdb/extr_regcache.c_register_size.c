
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_descr {int* sizeof_register; } ;
struct gdbarch {int dummy; } ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int gdb_assert (int) ;
 struct regcache_descr* regcache_descr (struct gdbarch*) ;

int
register_size (struct gdbarch *gdbarch, int regnum)
{
  struct regcache_descr *descr = regcache_descr (gdbarch);
  int size;
  gdb_assert (regnum >= 0 && regnum < (NUM_REGS + NUM_PSEUDO_REGS));
  size = descr->sizeof_register[regnum];


  gdb_assert (size == DEPRECATED_REGISTER_RAW_SIZE (regnum));


  return size;
}
