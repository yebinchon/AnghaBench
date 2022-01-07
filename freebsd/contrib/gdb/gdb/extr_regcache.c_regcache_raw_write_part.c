
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_descr {int nr_raw_registers; } ;
struct regcache {struct regcache_descr* descr; } ;


 int gdb_assert (int) ;
 int regcache_raw_read ;
 int regcache_raw_write ;
 int regcache_xfer_part (struct regcache*,int,int,int,int *,void const*,int ,int ) ;

void
regcache_raw_write_part (struct regcache *regcache, int regnum,
    int offset, int len, const void *buf)
{
  struct regcache_descr *descr = regcache->descr;
  gdb_assert (regnum >= 0 && regnum < descr->nr_raw_registers);
  regcache_xfer_part (regcache, regnum, offset, len, ((void*)0), buf,
        regcache_raw_read, regcache_raw_write);
}
