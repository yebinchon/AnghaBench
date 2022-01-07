
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {int* register_valid_p; TYPE_1__* descr; } ;
struct TYPE_2__ {int nr_raw_registers; } ;


 int gdb_assert (int) ;

int
regcache_valid_p (struct regcache *regcache, int regnum)
{
  gdb_assert (regcache != ((void*)0));
  gdb_assert (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  return regcache->register_valid_p[regnum];
}
