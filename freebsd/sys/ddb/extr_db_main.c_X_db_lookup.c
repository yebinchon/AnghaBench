
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* end; int * private; scalar_t__ start; } ;
typedef TYPE_1__ db_symtab_t ;
typedef int * c_linker_sym_t ;
typedef int * c_db_sym_t ;
struct TYPE_5__ {scalar_t__ st_name; } ;
typedef TYPE_2__ Elf_Sym ;


 int linker_ddb_lookup (char const*,int **) ;
 int strcmp (int *,char const*) ;

c_db_sym_t
X_db_lookup(db_symtab_t *symtab, const char *symbol)
{
 c_linker_sym_t lsym;
 Elf_Sym *sym;

 if (symtab->private == ((void*)0)) {
  return ((c_db_sym_t)((!linker_ddb_lookup(symbol, &lsym))
   ? lsym : ((void*)0)));
 } else {
  sym = (Elf_Sym *)symtab->start;
  while ((char *)sym < symtab->end) {
   if (sym->st_name != 0 &&
       !strcmp(symtab->private + sym->st_name, symbol))
    return ((c_db_sym_t)sym);
   sym++;
  }
 }
 return (((void*)0));
}
