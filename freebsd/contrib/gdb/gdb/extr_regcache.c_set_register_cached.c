
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* register_valid_p; TYPE_1__* descr; } ;
struct TYPE_3__ {int nr_raw_registers; } ;


 TYPE_2__* current_regcache ;
 int gdb_assert (int) ;

void
set_register_cached (int regnum, int state)
{
  gdb_assert (regnum >= 0);
  gdb_assert (regnum < current_regcache->descr->nr_raw_registers);
  current_regcache->register_valid_p[regnum] = state;
}
