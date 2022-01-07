
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache_descr {int nr_cooked_registers; struct type** register_type; } ;
struct gdbarch {int dummy; } ;


 int gdb_assert (int) ;
 struct regcache_descr* regcache_descr (struct gdbarch*) ;

struct type *
register_type (struct gdbarch *gdbarch, int regnum)
{
  struct regcache_descr *descr = regcache_descr (gdbarch);
  gdb_assert (regnum >= 0 && regnum < descr->nr_cooked_registers);
  return descr->register_type[regnum];
}
