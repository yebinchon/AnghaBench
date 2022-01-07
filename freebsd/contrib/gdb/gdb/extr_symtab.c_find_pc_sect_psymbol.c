
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct partial_symtab {scalar_t__ textlow; int globals_offset; int n_global_syms; int statics_offset; int n_static_syms; TYPE_3__* objfile; } ;
struct partial_symbol {int dummy; } ;
typedef int asection ;
struct TYPE_5__ {struct partial_symbol** list; } ;
struct TYPE_4__ {struct partial_symbol** list; } ;
struct TYPE_6__ {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ LOC_BLOCK ;
 int * SYMBOL_BFD_SECTION (struct partial_symbol*) ;
 scalar_t__ SYMBOL_CLASS (struct partial_symbol*) ;
 scalar_t__ SYMBOL_DOMAIN (struct partial_symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct partial_symbol*) ;
 scalar_t__ VAR_DOMAIN ;
 struct partial_symtab* find_pc_sect_psymtab (scalar_t__,int *) ;
 int fixup_psymbol_section (struct partial_symbol*,TYPE_3__*) ;

struct partial_symbol *
find_pc_sect_psymbol (struct partial_symtab *psymtab, CORE_ADDR pc,
        asection *section)
{
  struct partial_symbol *best = ((void*)0), *p, **pp;
  CORE_ADDR best_pc;

  if (!psymtab)
    psymtab = find_pc_sect_psymtab (pc, section);
  if (!psymtab)
    return 0;


  best_pc = (psymtab->textlow != 0) ? psymtab->textlow - 1 : 0;




  for (pp = psymtab->objfile->global_psymbols.list + psymtab->globals_offset;
    (pp - (psymtab->objfile->global_psymbols.list + psymtab->globals_offset)
     < psymtab->n_global_syms);
       pp++)
    {
      p = *pp;
      if (SYMBOL_DOMAIN (p) == VAR_DOMAIN
   && SYMBOL_CLASS (p) == LOC_BLOCK
   && pc >= SYMBOL_VALUE_ADDRESS (p)
   && (SYMBOL_VALUE_ADDRESS (p) > best_pc
       || (psymtab->textlow == 0
    && best_pc == 0 && SYMBOL_VALUE_ADDRESS (p) == 0)))
 {
   if (section)
     {
       fixup_psymbol_section (p, psymtab->objfile);
       if (SYMBOL_BFD_SECTION (p) != section)
  continue;
     }
   best_pc = SYMBOL_VALUE_ADDRESS (p);
   best = p;
 }
    }

  for (pp = psymtab->objfile->static_psymbols.list + psymtab->statics_offset;
    (pp - (psymtab->objfile->static_psymbols.list + psymtab->statics_offset)
     < psymtab->n_static_syms);
       pp++)
    {
      p = *pp;
      if (SYMBOL_DOMAIN (p) == VAR_DOMAIN
   && SYMBOL_CLASS (p) == LOC_BLOCK
   && pc >= SYMBOL_VALUE_ADDRESS (p)
   && (SYMBOL_VALUE_ADDRESS (p) > best_pc
       || (psymtab->textlow == 0
    && best_pc == 0 && SYMBOL_VALUE_ADDRESS (p) == 0)))
 {
   if (section)
     {
       fixup_psymbol_section (p, psymtab->objfile);
       if (SYMBOL_BFD_SECTION (p) != section)
  continue;
     }
   best_pc = SYMBOL_VALUE_ADDRESS (p);
   best = p;
 }
    }

  return best;
}
