
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; scalar_t__ end; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SKIP_PROLOGUE (scalar_t__) ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;

int
in_prologue (CORE_ADDR pc, CORE_ADDR func_start)
{
  struct symtab_and_line sal;
  CORE_ADDR func_addr, func_end;
  if (! find_pc_partial_function (pc, ((void*)0), &func_addr, &func_end))
    {
      CORE_ADDR prologue_end;



      if (! func_start)
 return 1;

      prologue_end = SKIP_PROLOGUE (func_start);

      return func_start <= pc && pc < prologue_end;
    }



  sal = find_pc_line (func_addr, 0);
  if (sal.line == 0
      || sal.end <= func_addr
      || func_end <= sal.end)
    {



      CORE_ADDR prologue_end = SKIP_PROLOGUE (func_addr);

      return func_addr <= pc && pc < prologue_end;
    }


  return func_addr <= pc && pc < sal.end;
}
