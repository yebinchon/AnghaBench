
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ pc; scalar_t__ end; } ;
struct symbol {int dummy; } ;
typedef int asection ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BLOCK_END (int ) ;
 scalar_t__ BLOCK_START (int ) ;
 scalar_t__ FUNCTION_START_OFFSET ;
 scalar_t__ SKIP_PROLOGUE (scalar_t__) ;
 int * SYMBOL_BFD_SECTION (struct symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 struct symtab_and_line find_pc_sect_line (scalar_t__,int *,int ) ;
 int fixup_symbol_section (struct symbol*,int *) ;
 scalar_t__ overlay_mapped_address (scalar_t__,int *) ;
 scalar_t__ overlay_unmapped_address (scalar_t__,int *) ;
 int section_is_mapped (int *) ;
 scalar_t__ section_is_overlay (int *) ;

struct symtab_and_line
find_function_start_sal (struct symbol *sym, int funfirstline)
{
  CORE_ADDR pc;
  struct symtab_and_line sal;

  pc = BLOCK_START (SYMBOL_BLOCK_VALUE (sym));
  fixup_symbol_section (sym, ((void*)0));
  if (funfirstline)
    {
      asection *section = SYMBOL_BFD_SECTION (sym);


      if (section_is_overlay (section) &&
   !section_is_mapped (section))
 pc = overlay_unmapped_address (pc, section);

      pc += FUNCTION_START_OFFSET;
      pc = SKIP_PROLOGUE (pc);


      pc = overlay_mapped_address (pc, section);
    }
  sal = find_pc_sect_line (pc, SYMBOL_BFD_SECTION (sym), 0);



  if (sal.pc != pc
      && BLOCK_START (SYMBOL_BLOCK_VALUE (sym)) <= sal.end
      && sal.end < BLOCK_END (SYMBOL_BLOCK_VALUE (sym)))
    {

      pc = sal.end;

      sal = find_pc_sect_line (pc, SYMBOL_BFD_SECTION (sym), 0);
    }
  sal.pc = pc;

  return sal;
}
