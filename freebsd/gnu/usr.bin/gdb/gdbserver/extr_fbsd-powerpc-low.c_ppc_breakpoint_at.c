
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_memory ) (int ,char*,int) ;} ;
typedef int CORE_ADDR ;


 unsigned long ppc_breakpoint ;
 int stub1 (int ,char*,int) ;
 TYPE_1__* the_target ;

__attribute__((used)) static int
ppc_breakpoint_at (CORE_ADDR where)
{
  unsigned long insn;

  (*the_target->read_memory) (where, (char *) &insn, 4);
  if (insn == ppc_breakpoint)
    return 1;


  return 0;
}
