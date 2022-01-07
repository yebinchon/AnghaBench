
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;
struct TYPE_2__ {struct symbol* (* la_lookup_symbol_nonlocal ) (char const*,char const*,struct block const*,int const,struct symtab**) ;struct value* (* la_value_of_this ) (int ) ;} ;


 int STATIC_BLOCK ;
 scalar_t__ check_field (struct value*,char const*) ;
 TYPE_1__* current_language ;
 struct symbol* lookup_symbol_aux_local (char const*,char const*,struct block const*,int const,struct symtab**) ;
 struct symbol* lookup_symbol_aux_psymtabs (int ,char const*,char const*,int const,struct symtab**) ;
 struct symbol* lookup_symbol_aux_symtabs (int ,char const*,char const*,int const,struct symtab**) ;
 struct value* stub1 (int ) ;
 struct symbol* stub2 (char const*,char const*,struct block const*,int const,struct symtab**) ;

__attribute__((used)) static struct symbol *
lookup_symbol_aux (const char *name, const char *linkage_name,
     const struct block *block, const domain_enum domain,
     int *is_a_field_of_this, struct symtab **symtab)
{
  struct symbol *sym;






  if (is_a_field_of_this != ((void*)0))
    *is_a_field_of_this = 0;




  sym = lookup_symbol_aux_local (name, linkage_name, block, domain,
     symtab);
  if (sym != ((void*)0))
    return sym;




  if (current_language->la_value_of_this != ((void*)0)
      && is_a_field_of_this != ((void*)0))
    {
      struct value *v = current_language->la_value_of_this (0);

      if (v && check_field (v, name))
 {
   *is_a_field_of_this = 1;
   if (symtab != ((void*)0))
     *symtab = ((void*)0);
   return ((void*)0);
 }
    }




  sym = current_language->la_lookup_symbol_nonlocal (name, linkage_name,
           block, domain,
           symtab);
  if (sym != ((void*)0))
    return sym;







  sym = lookup_symbol_aux_symtabs (STATIC_BLOCK, name, linkage_name,
       domain, symtab);
  if (sym != ((void*)0))
    return sym;

  sym = lookup_symbol_aux_psymtabs (STATIC_BLOCK, name, linkage_name,
        domain, symtab);
  if (sym != ((void*)0))
    return sym;

  if (symtab != ((void*)0))
    *symtab = ((void*)0);
  return ((void*)0);
}
