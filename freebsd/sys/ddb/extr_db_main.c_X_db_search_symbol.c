
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* end; scalar_t__ start; int * private; } ;
typedef TYPE_1__ db_symtab_t ;
typedef scalar_t__ db_strategy_t ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef int caddr_t ;
typedef scalar_t__ c_linker_sym_t ;
typedef int * c_db_sym_t ;
struct TYPE_5__ {scalar_t__ st_name; scalar_t__ st_shndx; scalar_t__ st_value; int st_info; } ;
typedef TYPE_2__ Elf_Sym ;


 scalar_t__ DB_STGY_ANY ;
 scalar_t__ DB_STGY_PROC ;
 scalar_t__ DB_STOFFS (scalar_t__) ;
 scalar_t__ ELF_ST_BIND (int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ STB_LOCAL ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_NOTYPE ;
 scalar_t__ STT_OBJECT ;
 int linker_ddb_search_symbol (int ,scalar_t__*,unsigned long*) ;

c_db_sym_t
X_db_search_symbol(db_symtab_t *symtab, db_addr_t off, db_strategy_t strat,
    db_expr_t *diffp)
{
 c_linker_sym_t lsym;
 Elf_Sym *sym, *match;
 unsigned long diff;
 db_addr_t stoffs;

 if (symtab->private == ((void*)0)) {
  if (!linker_ddb_search_symbol((caddr_t)off, &lsym, &diff)) {
   *diffp = (db_expr_t)diff;
   return ((c_db_sym_t)lsym);
  }
  return (((void*)0));
 }

 diff = ~0UL;
 match = ((void*)0);
 stoffs = DB_STOFFS(off);
 for (sym = (Elf_Sym*)symtab->start; (char*)sym < symtab->end; sym++) {
  if (sym->st_name == 0 || sym->st_shndx == SHN_UNDEF)
   continue;
  if (stoffs < sym->st_value)
   continue;
  if (ELF_ST_TYPE(sym->st_info) != STT_OBJECT &&
      ELF_ST_TYPE(sym->st_info) != STT_FUNC &&
      ELF_ST_TYPE(sym->st_info) != STT_NOTYPE)
   continue;
  if ((stoffs - sym->st_value) > diff)
   continue;
  if ((stoffs - sym->st_value) < diff) {
   diff = stoffs - sym->st_value;
   match = sym;
  } else {
   if (match == ((void*)0))
    match = sym;
   else if (ELF_ST_BIND(match->st_info) == STB_LOCAL &&
       ELF_ST_BIND(sym->st_info) != STB_LOCAL)
    match = sym;
  }
  if (diff == 0) {
   if (strat == DB_STGY_PROC &&
       ELF_ST_TYPE(sym->st_info) == STT_FUNC &&
       ELF_ST_BIND(sym->st_info) != STB_LOCAL)
    break;
   if (strat == DB_STGY_ANY &&
       ELF_ST_BIND(sym->st_info) != STB_LOCAL)
    break;
  }
 }

 *diffp = (match == ((void*)0)) ? off : diff;
 return ((c_db_sym_t)match);
}
