
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; scalar_t__ end; scalar_t__ symtab; } ;
typedef scalar_t__ CORE_ADDR ;


 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int max_skip_non_prologue_insns ;

__attribute__((used)) static CORE_ADDR
refine_prologue_limit (CORE_ADDR pc, CORE_ADDR lim_pc)
{
  struct symtab_and_line prologue_sal;

  prologue_sal = find_pc_line (pc, 0);
  if (prologue_sal.line != 0)
    {
      int i;
      CORE_ADDR addr = prologue_sal.end;
      for (i = 2 * max_skip_non_prologue_insns;
           i > 0 && (lim_pc == 0 || addr < lim_pc);
    i--)
        {
   struct symtab_and_line sal;

   sal = find_pc_line (addr, 0);
   if (sal.line == 0)
     break;
   if (sal.line <= prologue_sal.line
       && sal.symtab == prologue_sal.symtab)
     {
       prologue_sal = sal;
     }
   addr = sal.end;
 }

      if (lim_pc == 0 || prologue_sal.end < lim_pc)
 lim_pc = prologue_sal.end;
    }
  return lim_pc;
}
