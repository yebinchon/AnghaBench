
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context; } ;


 int NUM_REGS ;
 TYPE_1__* current_thread ;
 int deprecated_read_register_gen (int,char*) ;
 int* mappings ;

__attribute__((used)) static void
do_child_store_inferior_registers (int r)
{
  if (r >= 0)
    deprecated_read_register_gen (r, ((char *) &current_thread->context) + mappings[r]);
  else
    {
      for (r = 0; r < NUM_REGS; r++)
 do_child_store_inferior_registers (r);
    }
}
