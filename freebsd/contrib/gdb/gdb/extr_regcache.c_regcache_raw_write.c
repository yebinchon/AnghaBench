
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {int* register_valid_p; TYPE_1__* descr; int readonly_p; } ;
struct TYPE_2__ {int nr_raw_registers; int * sizeof_register; scalar_t__ legacy_p; } ;


 scalar_t__ CANNOT_STORE_REGISTER (int) ;
 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int legacy_write_register_gen (int,void const*) ;
 scalar_t__ memcmp (int ,void const*,int ) ;
 int memcpy (int ,void const*,int ) ;
 int ptid_equal (int ,int ) ;
 scalar_t__ regcache_valid_p (struct regcache*,int) ;
 int register_buffer (struct regcache*,int) ;
 int registers_changed () ;
 int registers_ptid ;
 int target_prepare_to_store () ;
 int target_store_registers (int) ;

void
regcache_raw_write (struct regcache *regcache, int regnum, const void *buf)
{
  gdb_assert (regcache != ((void*)0) && buf != ((void*)0));
  gdb_assert (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  gdb_assert (!regcache->readonly_p);

  if (regcache->descr->legacy_p)
    {



      gdb_assert (regcache == current_regcache);
      legacy_write_register_gen (regnum, buf);
      return;
    }



  if (CANNOT_STORE_REGISTER (regnum))
    return;


  gdb_assert (regcache == current_regcache);
  if (! ptid_equal (registers_ptid, inferior_ptid))
    {
      registers_changed ();
      registers_ptid = inferior_ptid;
    }



  if (regcache_valid_p (regcache, regnum)
      && (memcmp (register_buffer (regcache, regnum), buf,
    regcache->descr->sizeof_register[regnum]) == 0))
    return;

  target_prepare_to_store ();
  memcpy (register_buffer (regcache, regnum), buf,
   regcache->descr->sizeof_register[regnum]);
  regcache->register_valid_p[regnum] = 1;
  target_store_registers (regnum);
}
