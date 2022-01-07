
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct symtab {scalar_t__ nsyms; int stridx; int * data; } ;
struct TYPE_8__ {int prs_id; } ;
typedef TYPE_1__ prsyminfo_t ;
struct TYPE_9__ {int st_name; } ;
typedef TYPE_2__ GElf_Sym ;
typedef int Elf_Data ;
typedef int Elf ;


 int ENOENT ;
 char* elf_strptr (int *,int ,int ) ;
 int * gelf_getsym (int *,int,TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
lookup_symbol_by_name(Elf *elf, struct symtab *symtab, const char *symbol,
    GElf_Sym *symcopy, prsyminfo_t *si)
{
 GElf_Sym sym;
 Elf_Data *data;
 char *s;
 int i;

 if (symtab->nsyms == 0)
  return (ENOENT);
 data = symtab->data;
 for (i = 0; gelf_getsym(data, i, &sym) != ((void*)0); i++) {
  s = elf_strptr(elf, symtab->stridx, sym.st_name);
  if (s != ((void*)0) && strcmp(s, symbol) == 0) {
   memcpy(symcopy, &sym, sizeof(*symcopy));
   if (si != ((void*)0))
    si->prs_id = i;
   return (0);
  }
 }
 return (ENOENT);
}
