
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context; } ;


 int NUM_REGS ;
 TYPE_1__* current_thread ;
 scalar_t__ regptr (int *,int) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
do_child_fetch_inferior_registers (int r)
{
  if (r >= 0)
    {
      supply_register (r, (char *) regptr (&current_thread->context, r));
    }
  else
    {
      for (r = 0; r < NUM_REGS; r++)
 do_child_fetch_inferior_registers (r);
    }
}
