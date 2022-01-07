
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ pc; scalar_t__ line; scalar_t__ end; struct bfd_section* section; struct symtab* symtab; } ;
struct symtab {struct symtab* next; } ;
struct minimal_symbol {int dummy; } ;
struct linetable_entry {scalar_t__ pc; scalar_t__ line; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;
struct blockvector {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 int BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 void* BLOCK_END (int ) ;
 int GLOBAL_BLOCK ;
 struct linetable* LINETABLE (struct symtab*) ;
 scalar_t__ MSYMBOL_TYPE (struct minimal_symbol*) ;
 int SYMBOL_LINKAGE_NAME (struct minimal_symbol*) ;
 scalar_t__ SYMBOL_VALUE (struct minimal_symbol*) ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 struct symtab* find_pc_sect_symtab (scalar_t__,struct bfd_section*) ;
 int init_sal (struct symtab_and_line*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (scalar_t__) ;
 struct minimal_symbol* lookup_minimal_symbol_text (int ,int *) ;
 scalar_t__ mst_solib_trampoline ;

struct symtab_and_line
find_pc_sect_line (CORE_ADDR pc, struct bfd_section *section, int notcurrent)
{
  struct symtab *s;
  struct linetable *l;
  int len;
  int i;
  struct linetable_entry *item;
  struct symtab_and_line val;
  struct blockvector *bv;
  struct minimal_symbol *msymbol;
  struct minimal_symbol *mfunsym;



  struct linetable_entry *best = ((void*)0);
  CORE_ADDR best_end = 0;
  struct symtab *best_symtab = 0;






  struct linetable_entry *alt = ((void*)0);
  struct symtab *alt_symtab = 0;



  struct linetable_entry *prev;







  init_sal (&val);
  if (notcurrent)
    pc -= 1;
  msymbol = lookup_minimal_symbol_by_pc (pc);
  if (msymbol != ((void*)0))
    if (MSYMBOL_TYPE (msymbol) == mst_solib_trampoline)
      {
 mfunsym = lookup_minimal_symbol_text (SYMBOL_LINKAGE_NAME (msymbol),
           ((void*)0));
 if (mfunsym == ((void*)0))
                                                                                                           ;

 else if (SYMBOL_VALUE (mfunsym) == SYMBOL_VALUE (msymbol))


                                                                                                           ;

 else
   return find_pc_line (SYMBOL_VALUE (mfunsym), 0);
      }


  s = find_pc_sect_symtab (pc, section);
  if (!s)
    {

      if (notcurrent)
 pc++;
      val.pc = pc;
      return val;
    }

  bv = BLOCKVECTOR (s);





  for (; s && BLOCKVECTOR (s) == bv; s = s->next)
    {

      l = LINETABLE (s);
      if (!l)
 continue;
      len = l->nitems;
      if (len <= 0)
 {




   continue;
 }

      prev = ((void*)0);
      item = l->item;



      if (item->pc > pc && (!alt || item->pc < alt->pc))
 {
   alt = item;
   alt_symtab = s;
 }

      for (i = 0; i < len; i++, item++)
 {


   if (item->pc > pc)
     break;

   prev = item;
 }
      if (prev && prev->line && (!best || prev->pc > best->pc))
 {
   best = prev;
   best_symtab = s;


   if (best_end <= best->pc)
     best_end = 0;
 }




      if (best && i < len && item->pc > best->pc
          && (best_end == 0 || best_end > item->pc))
 best_end = item->pc;
    }

  if (!best_symtab)
    {
      if (!alt_symtab)
 {

   val.pc = pc;
 }
      else
 {
   val.symtab = alt_symtab;
   val.line = alt->line - 1;


   if (val.line == 0)
     ++val.line;

   val.pc = BLOCK_END (BLOCKVECTOR_BLOCK (bv, GLOBAL_BLOCK));
   val.end = alt->pc;
 }
    }
  else if (best->line == 0)
    {



      val.pc = pc;
    }
  else
    {
      val.symtab = best_symtab;
      val.line = best->line;
      val.pc = best->pc;
      if (best_end && (!alt || best_end < alt->pc))
 val.end = best_end;
      else if (alt)
 val.end = alt->pc;
      else
 val.end = BLOCK_END (BLOCKVECTOR_BLOCK (bv, GLOBAL_BLOCK));
    }
  val.section = section;
  return val;
}
