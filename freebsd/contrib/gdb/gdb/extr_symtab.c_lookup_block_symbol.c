
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dict_iterator {int dummy; } ;
struct block {int dummy; } ;
typedef scalar_t__ domain_enum ;


 int BLOCK_DICT (struct block const*) ;
 int BLOCK_FUNCTION (struct block const*) ;
 scalar_t__ LOC_ARG ;
 scalar_t__ LOC_BASEREG_ARG ;
 scalar_t__ LOC_COMPUTED_ARG ;
 scalar_t__ LOC_LOCAL_ARG ;
 scalar_t__ LOC_REF_ARG ;
 scalar_t__ LOC_REGPARM ;
 scalar_t__ LOC_REGPARM_ADDR ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ const SYMBOL_DOMAIN (struct symbol*) ;
 int SYMBOL_LINKAGE_NAME (struct symbol*) ;
 struct symbol* dict_iter_name_first (int ,char const*,struct dict_iterator*) ;
 struct symbol* dict_iter_name_next (char const*,struct dict_iterator*) ;
 scalar_t__ strcmp (int ,char const*) ;

struct symbol *
lookup_block_symbol (const struct block *block, const char *name,
       const char *linkage_name,
       const domain_enum domain)
{
  struct dict_iterator iter;
  struct symbol *sym;

  if (!BLOCK_FUNCTION (block))
    {
      for (sym = dict_iter_name_first (BLOCK_DICT (block), name, &iter);
    sym != ((void*)0);
    sym = dict_iter_name_next (name, &iter))
 {
   if (SYMBOL_DOMAIN (sym) == domain
       && (linkage_name != ((void*)0)
    ? strcmp (SYMBOL_LINKAGE_NAME (sym), linkage_name) == 0 : 1))
     return sym;
 }
      return ((void*)0);
    }
  else
    {






      struct symbol *sym_found = ((void*)0);

      for (sym = dict_iter_name_first (BLOCK_DICT (block), name, &iter);
    sym != ((void*)0);
    sym = dict_iter_name_next (name, &iter))
 {
   if (SYMBOL_DOMAIN (sym) == domain
       && (linkage_name != ((void*)0)
    ? strcmp (SYMBOL_LINKAGE_NAME (sym), linkage_name) == 0 : 1))
     {
       sym_found = sym;
       if (SYMBOL_CLASS (sym) != LOC_ARG &&
    SYMBOL_CLASS (sym) != LOC_LOCAL_ARG &&
    SYMBOL_CLASS (sym) != LOC_REF_ARG &&
    SYMBOL_CLASS (sym) != LOC_REGPARM &&
    SYMBOL_CLASS (sym) != LOC_REGPARM_ADDR &&
    SYMBOL_CLASS (sym) != LOC_BASEREG_ARG &&
    SYMBOL_CLASS (sym) != LOC_COMPUTED_ARG)
  {
    break;
  }
     }
 }
      return (sym_found);
    }
}
