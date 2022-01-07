
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; scalar_t__ end; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ FUNCTION_START_OFFSET ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;

CORE_ADDR
skip_prologue_using_sal (CORE_ADDR func_addr)
{
  struct symtab_and_line prologue_sal;
  CORE_ADDR start_pc;
  CORE_ADDR end_pc;


  find_pc_partial_function (func_addr, ((void*)0), &start_pc, &end_pc);
  start_pc += FUNCTION_START_OFFSET;

  prologue_sal = find_pc_line (start_pc, 0);
  if (prologue_sal.line != 0)
    {
      while (prologue_sal.end < end_pc)
 {
   struct symtab_and_line sal;

   sal = find_pc_line (prologue_sal.end, 0);
   if (sal.line == 0)
     break;


   if (sal.line >= prologue_sal.line)
     break;







   prologue_sal = sal;
 }
    }
  return prologue_sal.end;
}
