
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; } ;
struct TYPE_2__ {int nr_raw_registers; int * sizeof_register; } ;
typedef int LONGEST ;


 void* alloca (int ) ;
 int gdb_assert (int) ;
 int regcache_raw_write (struct regcache*,int,void*) ;
 int store_signed_integer (void*,int ,int ) ;

void
regcache_raw_write_signed (struct regcache *regcache, int regnum, LONGEST val)
{
  void *buf;
  gdb_assert (regcache != ((void*)0));
  gdb_assert (regnum >=0 && regnum < regcache->descr->nr_raw_registers);
  buf = alloca (regcache->descr->sizeof_register[regnum]);
  store_signed_integer (buf, regcache->descr->sizeof_register[regnum], val);
  regcache_raw_write (regcache, regnum, buf);
}
