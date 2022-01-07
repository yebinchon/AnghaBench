
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
typedef int domain_enum ;


 int GLOBAL_BLOCK ;
 struct symbol* lookup_symbol_aux_psymtabs (int ,char const*,char const*,int const,struct symtab**) ;
 struct symbol* lookup_symbol_aux_symtabs (int ,char const*,char const*,int const,struct symtab**) ;

struct symbol *
lookup_symbol_global (const char *name,
        const char *linkage_name,
        const domain_enum domain,
        struct symtab **symtab)
{
  struct symbol *sym;

  sym = lookup_symbol_aux_symtabs (GLOBAL_BLOCK, name, linkage_name,
       domain, symtab);
  if (sym != ((void*)0))
    return sym;

  return lookup_symbol_aux_psymtabs (GLOBAL_BLOCK, name, linkage_name,
         domain, symtab);
}
