
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relasize; int * rela; int dynsymcount; } ;
typedef int SymCache ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef int Elf_Rela ;


 int SYMLOOK_IFUNC ;
 int * calloc (int ,int) ;
 int free (int *) ;
 scalar_t__ reloc_nonplt_object (TYPE_1__*,int const*,int *,int,int *) ;

int
reloc_non_plt(Obj_Entry *obj, Obj_Entry *obj_rtld, int flags,
    RtldLockState *lockstate)
{
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 SymCache *cache;
 int r = -1;

 if ((flags & SYMLOOK_IFUNC) != 0)

  return (0);





 if (obj != obj_rtld) {
  cache = calloc(obj->dynsymcount, sizeof(SymCache));

 } else
  cache = ((void*)0);

 relalim = (const Elf_Rela *)((const char *)obj->rela + obj->relasize);
 for (rela = obj->rela; rela < relalim; rela++) {
  if (reloc_nonplt_object(obj, rela, cache, flags, lockstate) < 0)
   goto done;
 }
 r = 0;
done:
 if (cache != ((void*)0))
  free(cache);
 return (r);
}
