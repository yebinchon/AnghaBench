
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ p_type; int p_flags; int p_memsz; scalar_t__ p_vaddr; } ;
struct TYPE_7__ {int relasize; int phsize; scalar_t__ relocbase; TYPE_2__* phdr; int * rela; int dynsymcount; } ;
typedef int SymCache ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef int Elf_Rela ;
typedef TYPE_2__ Elf_Phdr ;


 int PF_X ;
 scalar_t__ PT_LOAD ;
 int SYMLOOK_IFUNC ;
 int __syncicache (scalar_t__,int ) ;
 int * calloc (int ,int) ;
 int free (int *) ;
 scalar_t__ reloc_nonplt_object (TYPE_1__*,TYPE_1__*,int const*,int *,int,int *) ;

int
reloc_non_plt(Obj_Entry *obj, Obj_Entry *obj_rtld, int flags,
    RtldLockState *lockstate)
{
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Phdr *phdr;
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
  if (reloc_nonplt_object(obj_rtld, obj, rela, cache, flags,
      lockstate) < 0)
   goto done;
 }
 r = 0;
done:
 if (cache != ((void*)0))
  free(cache);





 for (phdr = obj->phdr;
     (const char *)phdr < (const char *)obj->phdr + obj->phsize;
     phdr++) {
  if (phdr->p_type == PT_LOAD && (phdr->p_flags & PF_X) != 0) {
   __syncicache(obj->relocbase + phdr->p_vaddr,
       phdr->p_memsz);
  }
 }

 return (r);
}
