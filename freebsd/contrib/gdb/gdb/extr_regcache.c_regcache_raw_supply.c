
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {int* register_valid_p; TYPE_1__* descr; int readonly_p; } ;
struct TYPE_2__ {int nr_raw_registers; size_t* sizeof_register; } ;


 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int memcpy (void*,void const*,size_t) ;
 int memset (void*,int ,size_t) ;
 int ptid_equal (int ,int ) ;
 void* register_buffer (struct regcache*,int) ;
 int registers_changed () ;
 int registers_ptid ;

void
regcache_raw_supply (struct regcache *regcache, int regnum, const void *buf)
{
  void *regbuf;
  size_t size;

  gdb_assert (regcache != ((void*)0));
  gdb_assert (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  gdb_assert (!regcache->readonly_p);



  if (regcache == current_regcache
      && !ptid_equal (registers_ptid, inferior_ptid))
    {
      registers_changed ();
      registers_ptid = inferior_ptid;
    }

  regbuf = register_buffer (regcache, regnum);
  size = regcache->descr->sizeof_register[regnum];

  if (buf)
    memcpy (regbuf, buf, size);
  else
    memset (regbuf, 0, size);


  regcache->register_valid_p[regnum] = 1;
}
