
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; } ;
typedef int ULONGEST ;
struct TYPE_2__ {int nr_raw_registers; int * sizeof_register; } ;


 char* alloca (int ) ;
 int extract_unsigned_integer (char*,int ) ;
 int gdb_assert (int) ;
 int regcache_raw_read (struct regcache*,int,char*) ;

void
regcache_raw_read_unsigned (struct regcache *regcache, int regnum,
       ULONGEST *val)
{
  char *buf;
  gdb_assert (regcache != ((void*)0));
  gdb_assert (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  buf = alloca (regcache->descr->sizeof_register[regnum]);
  regcache_raw_read (regcache, regnum, buf);
  (*val) = extract_unsigned_integer (buf,
         regcache->descr->sizeof_register[regnum]);
}
