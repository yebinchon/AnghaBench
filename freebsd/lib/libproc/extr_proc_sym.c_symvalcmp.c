
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct symsort_thunk {TYPE_1__* symtab; int e; } ;
struct TYPE_5__ {scalar_t__ st_value; int st_name; int st_info; } ;
struct TYPE_4__ {int stridx; int data; } ;
typedef TYPE_2__ GElf_Sym ;


 int GELF_ST_BIND (int ) ;
 int STB_LOCAL ;
 char* elf_strptr (int ,int ,int ) ;
 int gelf_getsym (int ,int ,TYPE_2__*) ;

__attribute__((used)) static int
symvalcmp(void *_thunk, const void *a1, const void *a2)
{
 GElf_Sym sym1, sym2;
 struct symsort_thunk *thunk;
 const char *s1, *s2;
 u_int i1, i2;
 int bind1, bind2;

 i1 = *(const u_int *)a1;
 i2 = *(const u_int *)a2;
 thunk = _thunk;

 (void)gelf_getsym(thunk->symtab->data, i1, &sym1);
 (void)gelf_getsym(thunk->symtab->data, i2, &sym2);

 if (sym1.st_value != sym2.st_value)
  return (sym1.st_value < sym2.st_value ? -1 : 1);


 bind1 = GELF_ST_BIND(sym1.st_info);
 bind2 = GELF_ST_BIND(sym2.st_info);
 if (bind1 != bind2) {
  if (bind1 == STB_LOCAL && bind2 != STB_LOCAL)
   return (-1);
  if (bind1 != STB_LOCAL && bind2 == STB_LOCAL)
   return (1);
 }

 s1 = elf_strptr(thunk->e, thunk->symtab->stridx, sym1.st_name);
 s2 = elf_strptr(thunk->e, thunk->symtab->stridx, sym2.st_name);
 if (s1 != ((void*)0) && s2 != ((void*)0)) {

  if (*s1 == '$')
   return (-1);
  if (*s2 == '$')
   return (1);


  for (; *s1 == '_' && *s2 == '_'; s1++, s2++)
   ;
  if (*s1 == '_')
   return (-1);
  if (*s2 == '_')
   return (1);
 }

 return (0);
}
