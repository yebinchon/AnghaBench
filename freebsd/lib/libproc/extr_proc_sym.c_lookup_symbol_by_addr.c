
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct symtab {int nsyms; int stridx; int * index; int * data; } ;
struct TYPE_4__ {uintptr_t st_value; uintptr_t st_size; int st_name; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf_Data ;
typedef int Elf ;


 int ENOENT ;
 char* elf_strptr (int *,int ,int ) ;
 int gelf_getsym (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
lookup_symbol_by_addr(Elf *e, struct symtab *symtab, uintptr_t addr,
    const char **namep, GElf_Sym *symp)
{
 GElf_Sym sym;
 Elf_Data *data;
 const char *s;
 u_int i, min, max, mid;

 if (symtab->nsyms == 0)
  return (ENOENT);

 data = symtab->data;
 min = 0;
 max = symtab->nsyms - 1;

 while (min <= max) {
  mid = (max + min) / 2;
  (void)gelf_getsym(data, symtab->index[mid], &sym);
  if (addr >= sym.st_value && addr < sym.st_value + sym.st_size)
   break;

  if (addr < sym.st_value)
   max = mid - 1;
  else
   min = mid + 1;
 }
 if (min > max)
  return (ENOENT);




 for (i = mid; i < symtab->nsyms; i++) {
  (void)gelf_getsym(data, symtab->index[i], &sym);
  if (addr < sym.st_value || addr >= sym.st_value + sym.st_size)
   break;
 }
 (void)gelf_getsym(data, symtab->index[i - 1], symp);
 s = elf_strptr(e, symtab->stridx, symp->st_name);
 if (s != ((void*)0) && namep != ((void*)0))
  *namep = s;
 return (0);
}
