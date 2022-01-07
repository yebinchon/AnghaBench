
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* pltgot; } ;
typedef TYPE_1__ Obj_Entry ;
typedef int Elf_Word ;
typedef scalar_t__ Elf_Addr ;


 scalar_t__ _rtld_bind_start_0 ;
 scalar_t__ _rtld_bind_start_1 ;
 int install_plt (int *,scalar_t__) ;

void
init_pltgot(Obj_Entry *obj)
{
 Elf_Word *entry;

 if (obj->pltgot != ((void*)0)) {
  entry = (Elf_Word *)obj->pltgot;
  install_plt(&entry[0], (Elf_Addr)_rtld_bind_start_0);
  install_plt(&entry[8], (Elf_Addr)_rtld_bind_start_1);
  obj->pltgot[8] = (Elf_Addr)obj;
 }
}
