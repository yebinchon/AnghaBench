
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int ;
struct symtab {int* index; int nsyms; int stridx; int * data; } ;
struct symsort_thunk {struct symtab* symtab; int * e; } ;
struct TYPE_3__ {scalar_t__ sh_type; int sh_size; int sh_entsize; int sh_link; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int* calloc (int,int) ;
 int * elf_getdata (int *,int *) ;
 int * elf_nextscn (int *,int *) ;
 int * gelf_getehdr (int *,int *) ;
 int gelf_getshdr (int *,TYPE_1__*) ;
 int qsort_r (int*,int,int,struct symsort_thunk*,int ) ;
 int symvalcmp ;

__attribute__((used)) static int
load_symtab(Elf *e, struct symtab *symtab, u_long sh_type)
{
 GElf_Ehdr ehdr;
 GElf_Shdr shdr;
 struct symsort_thunk thunk;
 Elf_Scn *scn;
 u_int nsyms;

 if (gelf_getehdr(e, &ehdr) == ((void*)0))
  return (-1);

 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
  (void)gelf_getshdr(scn, &shdr);
  if (shdr.sh_type == sh_type)
   break;
 }
 if (scn == ((void*)0))
  return (-1);

 nsyms = shdr.sh_size / shdr.sh_entsize;
 if (nsyms > (1 << 20))
  return (-1);

 if ((symtab->data = elf_getdata(scn, ((void*)0))) == ((void*)0))
  return (-1);

 symtab->index = calloc(nsyms, sizeof(u_int));
 if (symtab->index == ((void*)0))
  return (-1);
 for (u_int i = 0; i < nsyms; i++)
  symtab->index[i] = i;
 symtab->nsyms = nsyms;
 symtab->stridx = shdr.sh_link;

 thunk.e = e;
 thunk.symtab = symtab;
 qsort_r(symtab->index, nsyms, sizeof(u_int), &thunk, symvalcmp);

 return (0);
}
