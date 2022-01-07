
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hash; } ;
typedef TYPE_1__ Ver_Entry ;
struct TYPE_6__ {size_t vernum; TYPE_1__ const* vertab; scalar_t__ strtab; int path; int * versyms; } ;
typedef TYPE_2__ Obj_Entry ;
typedef size_t Elf_Versym ;


 size_t VER_NDX (int ) ;
 int _rtld_error (char*,int ,scalar_t__,size_t) ;

const Ver_Entry *
fetch_ventry(const Obj_Entry *obj, unsigned long symnum)
{
    Elf_Versym vernum;

    if (obj->vertab) {
 vernum = VER_NDX(obj->versyms[symnum]);
 if (vernum >= obj->vernum) {
     _rtld_error("%s: symbol %s has wrong verneed value %d",
  obj->path, obj->strtab + symnum, vernum);
 } else if (obj->vertab[vernum].hash != 0) {
     return &obj->vertab[vernum];
 }
    }
    return ((void*)0);
}
