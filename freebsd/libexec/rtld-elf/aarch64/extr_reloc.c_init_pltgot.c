
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** pltgot; } ;
typedef TYPE_1__ Obj_Entry ;
typedef void* Elf_Addr ;


 int _rtld_bind_start ;

void
init_pltgot(Obj_Entry *obj)
{

 if (obj->pltgot != ((void*)0)) {
  obj->pltgot[1] = (Elf_Addr) obj;
  obj->pltgot[2] = (Elf_Addr) &_rtld_bind_start;
 }
}
