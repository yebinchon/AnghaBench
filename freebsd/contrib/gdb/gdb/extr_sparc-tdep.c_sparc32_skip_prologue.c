
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ end; } ;
struct sparc_frame_cache {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 scalar_t__ find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ sparc_analyze_prologue (scalar_t__,int,struct sparc_frame_cache*) ;

__attribute__((used)) static CORE_ADDR
sparc32_skip_prologue (CORE_ADDR start_pc)
{
  struct symtab_and_line sal;
  CORE_ADDR func_start, func_end;
  struct sparc_frame_cache cache;



  if (find_pc_partial_function (start_pc, ((void*)0), &func_start, &func_end))
    {
      sal = find_pc_line (func_start, 0);

      if (sal.end < func_end
   && start_pc <= sal.end)
 return sal.end;
    }

  return sparc_analyze_prologue (start_pc, 0xffffffffUL, &cache);
}
