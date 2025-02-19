
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_14__ {int st_name; size_t st_size; scalar_t__ st_value; } ;
struct TYPE_13__ {int relasize; char* strtab; scalar_t__ relocbase; int path; TYPE_3__* symtab; TYPE_4__* rela; int mainprog; } ;
struct TYPE_12__ {TYPE_2__ const* defobj_out; TYPE_3__* sym_out; int flags; int ventry; } ;
typedef TYPE_1__ SymLook ;
typedef TYPE_2__ const Obj_Entry ;
typedef TYPE_3__ Elf_Sym ;
typedef TYPE_4__ Elf_Rela ;


 int ELF_R_SYM (int ) ;
 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ R_RISCV_COPY ;
 int SYMLOOK_EARLY ;
 int _rtld_error (char*,char const*,int ) ;
 int assert (int ) ;
 int fetch_ventry (TYPE_2__ const*,int) ;
 TYPE_2__ const* globallist_next (TYPE_2__ const*) ;
 int memcpy (void*,void const*,size_t) ;
 int symlook_init (TYPE_1__*,char const*) ;
 int symlook_obj (TYPE_1__*,TYPE_2__ const*) ;

int
do_copy_relocations(Obj_Entry *dstobj)
{
 const Obj_Entry *srcobj, *defobj;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Sym *srcsym;
 const Elf_Sym *dstsym;
 const void *srcaddr;
 const char *name;
 void *dstaddr;
 SymLook req;
 size_t size;
 int res;




 assert(dstobj->mainprog);

 relalim = (const Elf_Rela *)((const char *)dstobj->rela +
     dstobj->relasize);
 for (rela = dstobj->rela; rela < relalim; rela++) {
  if (ELF_R_TYPE(rela->r_info) != R_RISCV_COPY)
   continue;

  dstaddr = (void *)(dstobj->relocbase + rela->r_offset);
  dstsym = dstobj->symtab + ELF_R_SYM(rela->r_info);
  name = dstobj->strtab + dstsym->st_name;
  size = dstsym->st_size;

  symlook_init(&req, name);
  req.ventry = fetch_ventry(dstobj, ELF_R_SYM(rela->r_info));
  req.flags = SYMLOOK_EARLY;

  for (srcobj = globallist_next(dstobj); srcobj != ((void*)0);
       srcobj = globallist_next(srcobj)) {
   res = symlook_obj(&req, srcobj);
   if (res == 0) {
    srcsym = req.sym_out;
    defobj = req.defobj_out;
    break;
   }
  }
  if (srcobj == ((void*)0)) {
   _rtld_error(
"Undefined symbol \"%s\" referenced from COPY relocation in %s",
       name, dstobj->path);
   return (-1);
  }

  srcaddr = (const void *)(defobj->relocbase + srcsym->st_value);
  memcpy(dstaddr, srcaddr, size);
 }

 return (0);
}
