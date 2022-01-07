
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 struct symbol* lookup_symbol_global (char const*,char const*,int const,struct symtab**) ;
 struct symbol* lookup_symbol_static (char const*,char const*,struct block const*,int const,struct symtab**) ;

struct symbol *
basic_lookup_symbol_nonlocal (const char *name,
         const char *linkage_name,
         const struct block *block,
         const domain_enum domain,
         struct symtab **symtab)
{
  struct symbol *sym;
  sym = lookup_symbol_static (name, linkage_name, block, domain, symtab);
  if (sym != ((void*)0))
    return sym;

  return lookup_symbol_global (name, linkage_name, domain, symtab);
}
