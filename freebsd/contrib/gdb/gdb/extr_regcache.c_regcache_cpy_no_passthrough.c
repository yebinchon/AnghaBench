
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; int register_valid_p; int registers; } ;
struct TYPE_2__ {scalar_t__ gdbarch; int sizeof_raw_register_valid_p; int sizeof_raw_registers; } ;


 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 int memcpy (int ,int ,int ) ;

void
regcache_cpy_no_passthrough (struct regcache *dst, struct regcache *src)
{
  int i;
  gdb_assert (src != ((void*)0) && dst != ((void*)0));
  gdb_assert (src->descr->gdbarch == dst->descr->gdbarch);



  gdb_assert (dst != current_regcache);
  memcpy (dst->registers, src->registers, dst->descr->sizeof_raw_registers);
  memcpy (dst->register_valid_p, src->register_valid_p,
   dst->descr->sizeof_raw_register_valid_p);
}
