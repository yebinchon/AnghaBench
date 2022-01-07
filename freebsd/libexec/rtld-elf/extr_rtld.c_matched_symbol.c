
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int path; } ;
struct TYPE_17__ {int st_name; int st_info; int st_shndx; int st_value; } ;
struct TYPE_16__ {char* strtab; int* versyms; size_t vernum; TYPE_1__* vertab; int path; TYPE_6__* symtab; } ;
struct TYPE_15__ {int flags; char const* name; TYPE_2__* ventry; } ;
struct TYPE_14__ {TYPE_6__ const* sym_out; int vcount; TYPE_6__ const* vsymp; } ;
struct TYPE_13__ {char const* name; scalar_t__ hash; } ;
struct TYPE_12__ {scalar_t__ hash; char const* name; } ;
typedef TYPE_3__ Sym_Match_Result ;
typedef TYPE_4__ SymLook ;
typedef TYPE_5__ Obj_Entry ;
typedef size_t Elf_Versym ;
typedef TYPE_6__ Elf_Sym ;


 int const ELF_ST_TYPE (int ) ;
 int SHN_UNDEF ;






 int SYMLOOK_DLSYM ;
 int SYMLOOK_IN_PLT ;
 size_t VER_NDX (int) ;
 size_t VER_NDX_GIVEN ;
 int VER_NDX_HIDDEN ;
 int _rtld_error (char*,int ,char*,...) ;
 TYPE_8__ obj_rtld ;
 scalar_t__ object_match_name (TYPE_5__ const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool
matched_symbol(SymLook *req, const Obj_Entry *obj, Sym_Match_Result *result,
    const unsigned long symnum)
{
 Elf_Versym verndx;
 const Elf_Sym *symp;
 const char *strp;

 symp = obj->symtab + symnum;
 strp = obj->strtab + symp->st_name;

 switch (ELF_ST_TYPE(symp->st_info)) {
 case 132:
 case 130:
 case 129:
 case 133:
 case 131:
  if (symp->st_value == 0)
   return (0);

 case 128:
  if (symp->st_shndx != SHN_UNDEF)
   break;

  else if (((req->flags & SYMLOOK_IN_PLT) == 0) &&
      (ELF_ST_TYPE(symp->st_info) == 132))
   break;


 default:
  return (0);
 }
 if (req->name[0] != strp[0] || strcmp(req->name, strp) != 0)
  return (0);

 if (req->ventry == ((void*)0)) {
  if (obj->versyms != ((void*)0)) {
   verndx = VER_NDX(obj->versyms[symnum]);
   if (verndx > obj->vernum) {
    _rtld_error(
        "%s: symbol %s references wrong version %d",
        obj->path, obj->strtab + symnum, verndx);
    return (0);
   }
   if ((req->flags & SYMLOOK_DLSYM) == 0 &&
       verndx == VER_NDX_GIVEN) {
    result->sym_out = symp;
    return (1);
   }
   else if (verndx >= VER_NDX_GIVEN) {
    if ((obj->versyms[symnum] & VER_NDX_HIDDEN)
        == 0) {
     if (result->vsymp == ((void*)0))
      result->vsymp = symp;
     result->vcount++;
    }
    return (0);
   }
  }
  result->sym_out = symp;
  return (1);
 }
 if (obj->versyms == ((void*)0)) {
  if (object_match_name(obj, req->ventry->name)) {
   _rtld_error("%s: object %s should provide version %s "
       "for symbol %s", obj_rtld.path, obj->path,
       req->ventry->name, obj->strtab + symnum);
   return (0);
  }
 } else {
  verndx = VER_NDX(obj->versyms[symnum]);
  if (verndx > obj->vernum) {
   _rtld_error("%s: symbol %s references wrong version %d",
       obj->path, obj->strtab + symnum, verndx);
   return (0);
  }
  if (obj->vertab[verndx].hash != req->ventry->hash ||
      strcmp(obj->vertab[verndx].name, req->ventry->name)) {
   if ((req->flags & SYMLOOK_DLSYM) ||
       (verndx >= VER_NDX_GIVEN) ||
       (obj->versyms[symnum] & VER_NDX_HIDDEN))
    return (0);
  }
 }
 result->sym_out = symp;
 return (1);
}
