
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Ver_Entry ;
struct TYPE_18__ {int flags; int * file; int * name; int hash; } ;
struct TYPE_17__ {int vda_name; } ;
struct TYPE_16__ {scalar_t__ vd_version; scalar_t__ vd_next; int vd_flags; int vd_aux; int vd_hash; int vd_ndx; } ;
struct TYPE_15__ {int vna_other; scalar_t__ vna_next; int vna_name; int vna_hash; } ;
struct TYPE_14__ {scalar_t__ vn_version; int vn_aux; scalar_t__ vn_next; int vn_file; } ;
struct TYPE_13__ {int ver_checked; int vernum; TYPE_6__* vertab; int * strtab; TYPE_2__* verneed; TYPE_4__* verdef; int path; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Verneed ;
typedef TYPE_3__ Elf_Vernaux ;
typedef TYPE_4__ Elf_Verdef ;
typedef TYPE_5__ Elf_Verdaux ;


 scalar_t__ VER_DEF_CURRENT ;
 int VER_DEF_IDX (int ) ;
 int VER_FLG_BASE ;
 int VER_INFO_HIDDEN ;
 scalar_t__ VER_NEED_CURRENT ;
 int VER_NEED_HIDDEN ;
 int VER_NEED_IDX (int) ;
 int _rtld_error (char*,int ,scalar_t__) ;
 int assert (int) ;
 scalar_t__ check_object_provided_version (TYPE_1__*,TYPE_1__ const*,TYPE_3__ const*) ;
 TYPE_1__* locate_dependency (TYPE_1__*,int *) ;
 TYPE_6__* xcalloc (int,int) ;

__attribute__((used)) static int
rtld_verify_object_versions(Obj_Entry *obj)
{
    const Elf_Verneed *vn;
    const Elf_Verdef *vd;
    const Elf_Verdaux *vda;
    const Elf_Vernaux *vna;
    const Obj_Entry *depobj;
    int maxvernum, vernum;

    if (obj->ver_checked)
 return (0);
    obj->ver_checked = 1;

    maxvernum = 0;





    vn = obj->verneed;
    while (vn != ((void*)0)) {
 if (vn->vn_version != VER_NEED_CURRENT) {
     _rtld_error("%s: Unsupported version %d of Elf_Verneed entry",
  obj->path, vn->vn_version);
     return (-1);
 }
 vna = (const Elf_Vernaux *)((const char *)vn + vn->vn_aux);
 for (;;) {
     vernum = VER_NEED_IDX(vna->vna_other);
     if (vernum > maxvernum)
  maxvernum = vernum;
     if (vna->vna_next == 0)
   break;
     vna = (const Elf_Vernaux *)((const char *)vna + vna->vna_next);
 }
 if (vn->vn_next == 0)
     break;
 vn = (const Elf_Verneed *)((const char *)vn + vn->vn_next);
    }

    vd = obj->verdef;
    while (vd != ((void*)0)) {
 if (vd->vd_version != VER_DEF_CURRENT) {
     _rtld_error("%s: Unsupported version %d of Elf_Verdef entry",
  obj->path, vd->vd_version);
     return (-1);
 }
 vernum = VER_DEF_IDX(vd->vd_ndx);
 if (vernum > maxvernum)
  maxvernum = vernum;
 if (vd->vd_next == 0)
     break;
 vd = (const Elf_Verdef *)((const char *)vd + vd->vd_next);
    }

    if (maxvernum == 0)
 return (0);






    obj->vernum = maxvernum + 1;
    obj->vertab = xcalloc(obj->vernum, sizeof(Ver_Entry));

    vd = obj->verdef;
    while (vd != ((void*)0)) {
 if ((vd->vd_flags & VER_FLG_BASE) == 0) {
     vernum = VER_DEF_IDX(vd->vd_ndx);
     assert(vernum <= maxvernum);
     vda = (const Elf_Verdaux *)((const char *)vd + vd->vd_aux);
     obj->vertab[vernum].hash = vd->vd_hash;
     obj->vertab[vernum].name = obj->strtab + vda->vda_name;
     obj->vertab[vernum].file = ((void*)0);
     obj->vertab[vernum].flags = 0;
 }
 if (vd->vd_next == 0)
     break;
 vd = (const Elf_Verdef *)((const char *)vd + vd->vd_next);
    }

    vn = obj->verneed;
    while (vn != ((void*)0)) {
 depobj = locate_dependency(obj, obj->strtab + vn->vn_file);
 if (depobj == ((void*)0))
     return (-1);
 vna = (const Elf_Vernaux *)((const char *)vn + vn->vn_aux);
 for (;;) {
     if (check_object_provided_version(obj, depobj, vna))
  return (-1);
     vernum = VER_NEED_IDX(vna->vna_other);
     assert(vernum <= maxvernum);
     obj->vertab[vernum].hash = vna->vna_hash;
     obj->vertab[vernum].name = obj->strtab + vna->vna_name;
     obj->vertab[vernum].file = obj->strtab + vn->vn_file;
     obj->vertab[vernum].flags = (vna->vna_other & VER_NEED_HIDDEN) ?
  VER_INFO_HIDDEN : 0;
     if (vna->vna_next == 0)
   break;
     vna = (const Elf_Vernaux *)((const char *)vna + vna->vna_next);
 }
 if (vn->vn_next == 0)
     break;
 vn = (const Elf_Verneed *)((const char *)vn + vn->vn_next);
    }
    return 0;
}
