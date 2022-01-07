
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* descr; } ;
struct TYPE_3__ {int nr_raw_registers; } ;


 int alloca (int ) ;
 TYPE_2__* current_regcache ;
 int pid_to_ptid (int) ;
 int registers_changed_hook () ;
 int registers_ptid ;
 int set_register_cached (int,int ) ;

void
registers_changed (void)
{
  int i;

  registers_ptid = pid_to_ptid (-1);






  alloca (0);

  for (i = 0; i < current_regcache->descr->nr_raw_registers; i++)
    set_register_cached (i, 0);

  if (registers_changed_hook)
    registers_changed_hook ();
}
