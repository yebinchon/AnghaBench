
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ r_offset; } ;
struct TYPE_5__ {scalar_t__ glink; TYPE_2__ const* pltrela; scalar_t__ relocbase; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Rela ;
typedef scalar_t__ Elf_Addr ;


 int dbg (char*,void*,long,scalar_t__) ;

__attribute__((used)) static int
reloc_plt_object(Obj_Entry *obj, const Elf_Rela *rela)
{
 Elf_Addr *where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
 long reloff;

 reloff = rela - obj->pltrela;

 dbg(" reloc_plt_object: where=%p,reloff=%lx,glink=%#lx", (void *)where,
     reloff, obj->glink);



 *where = (Elf_Addr)obj->glink + 32 +
     8*((reloff < 0x8000) ? reloff : 0x8000) +
     12*((reloff < 0x8000) ? 0 : (reloff - 0x8000));




 return (0);
}
