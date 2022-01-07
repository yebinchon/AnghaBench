
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; int readonly_p; } ;
struct TYPE_2__ {int nr_raw_registers; int * sizeof_register; scalar_t__ legacy_p; } ;


 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int legacy_read_register_gen (int,void*) ;
 int memcpy (void*,int ,int ) ;
 int ptid_equal (int ,int ) ;
 int register_buffer (struct regcache*,int) ;
 int register_cached (int) ;
 int registers_changed () ;
 int registers_ptid ;
 int target_fetch_registers (int) ;

void
regcache_raw_read (struct regcache *regcache, int regnum, void *buf)
{
  gdb_assert (regcache != ((void*)0) && buf != ((void*)0));
  gdb_assert (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  if (regcache->descr->legacy_p
      && !regcache->readonly_p)
    {
      gdb_assert (regcache == current_regcache);



      legacy_read_register_gen (regnum, buf);
      return;
    }




  if (!regcache->readonly_p)
    {
      gdb_assert (regcache == current_regcache);
      if (! ptid_equal (registers_ptid, inferior_ptid))
 {
   registers_changed ();
   registers_ptid = inferior_ptid;
 }
      if (!register_cached (regnum))
 target_fetch_registers (regnum);
    }

  memcpy (buf, register_buffer (regcache, regnum),
   regcache->descr->sizeof_register[regnum]);
}
