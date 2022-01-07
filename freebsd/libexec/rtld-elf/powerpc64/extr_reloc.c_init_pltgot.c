
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct funcdesc {int dummy; } ;
struct TYPE_3__ {scalar_t__* pltgot; } ;
typedef TYPE_1__ Obj_Entry ;
typedef scalar_t__ Elf_Addr ;


 int _rtld_bind_start ;
 int memcpy (scalar_t__*,int ,int) ;

void
init_pltgot(Obj_Entry *obj)
{
 Elf_Addr *pltcall;

 pltcall = obj->pltgot;

 if (pltcall == ((void*)0)) {
  return;
 }





 memcpy(pltcall, _rtld_bind_start, sizeof(struct funcdesc));
 pltcall[2] = (Elf_Addr)obj;

}
