
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_14__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_13__ {int st_value; } ;
struct TYPE_12__ {int tlsoffset; int path; TYPE_1__* symtab; scalar_t__ strtab; int tls_done; int tlsindex; int mainprog; scalar_t__ relocbase; } ;
struct TYPE_11__ {scalar_t__ st_name; } ;
typedef int SymCache ;
typedef int RtldLockState ;
typedef TYPE_2__ Obj_Entry ;
typedef TYPE_3__ Elf_Sym ;
typedef TYPE_4__ Elf_Rel ;
typedef int Elf_Addr ;
typedef int Elf32_Sword ;


 unsigned long ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 int RELOC_ALIGNED_P (int*) ;
 int __predict_true (int ) ;
 int _rtld_error (char*,int ,...) ;
 int allocate_tls_offset (TYPE_2__*) ;
 int dbg (char*,...) ;
 TYPE_3__* find_symdef (unsigned long,TYPE_2__*,TYPE_2__ const**,int,int *,int *) ;
 int load_ptr (int*) ;
 int store_ptr (int*,int) ;

__attribute__((used)) static int
reloc_nonplt_object(Obj_Entry *obj, const Elf_Rel *rel, SymCache *cache,
    int flags, RtldLockState *lockstate)
{
 Elf_Addr *where;
 const Elf_Sym *def;
 const Obj_Entry *defobj;
 Elf_Addr tmp;
 unsigned long symnum;

 where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
 symnum = ELF_R_SYM(rel->r_info);

 switch (ELF_R_TYPE(rel->r_info)) {
 case 133:
  break;


 case 132: {
  Elf32_Sword addend;




  addend = *where;
  if (addend & 0x00800000)
   addend |= 0xff000000;

  def = find_symdef(symnum, obj, &defobj, flags, cache,
      lockstate);
  if (def == ((void*)0))
    return -1;
   tmp = (Elf_Addr)obj->relocbase + def->st_value
       - (Elf_Addr)where + (addend << 2);
   if ((tmp & 0xfe000000) != 0xfe000000 &&
       (tmp & 0xfe000000) != 0) {
    _rtld_error(
    "%s: R_ARM_PC24 relocation @ %p to %s failed "
    "(displacement %ld (%#lx) out of range)",
        obj->path, where,
        obj->strtab + obj->symtab[symnum].st_name,
        (long) tmp, (long) tmp);
    return -1;
   }
   tmp >>= 2;
   *where = (*where & 0xff000000) | (tmp & 0x00ffffff);
   dbg("PC24 %s in %s --> %p @ %p in %s",
       obj->strtab + obj->symtab[symnum].st_name,
       obj->path, (void *)*where, where, defobj->path);
   break;
  }


  case 136:
  case 134:
   def = find_symdef(symnum, obj, &defobj, flags, cache,
       lockstate);
   if (def == ((void*)0))
    return -1;
   if (__predict_true(RELOC_ALIGNED_P(where))) {
    tmp = *where + (Elf_Addr)defobj->relocbase +
        def->st_value;
    *where = tmp;
   } else {
    tmp = load_ptr(where) +
        (Elf_Addr)defobj->relocbase +
        def->st_value;
    store_ptr(where, tmp);
   }
   dbg("ABS32/GLOB_DAT %s in %s --> %p @ %p in %s",
       obj->strtab + obj->symtab[symnum].st_name,
       obj->path, (void *)tmp, where, defobj->path);
   break;

  case 131:
   if (__predict_true(RELOC_ALIGNED_P(where))) {
    tmp = *where + (Elf_Addr)obj->relocbase;
    *where = tmp;
   } else {
    tmp = load_ptr(where) +
        (Elf_Addr)obj->relocbase;
    store_ptr(where, tmp);
   }
   dbg("RELATIVE in %s --> %p", obj->path,
       (void *)tmp);
   break;

  case 135:






   if (!obj->mainprog) {
    _rtld_error(
   "%s: Unexpected R_COPY relocation in shared library",
        obj->path);
    return -1;
   }
   dbg("COPY (avoid in main)");
   break;

  case 129:
   def = find_symdef(symnum, obj, &defobj, flags, cache,
       lockstate);
   if (def == ((void*)0))
    return -1;

   tmp = (Elf_Addr)(def->st_value);
   if (__predict_true(RELOC_ALIGNED_P(where)))
    *where = tmp;
   else
    store_ptr(where, tmp);

   dbg("TLS_DTPOFF32 %s in %s --> %p",
       obj->strtab + obj->symtab[symnum].st_name,
       obj->path, (void *)tmp);

   break;
  case 130:
   def = find_symdef(symnum, obj, &defobj, flags, cache,
       lockstate);
   if (def == ((void*)0))
    return -1;

   tmp = (Elf_Addr)(defobj->tlsindex);
   if (__predict_true(RELOC_ALIGNED_P(where)))
    *where = tmp;
   else
    store_ptr(where, tmp);

   dbg("TLS_DTPMOD32 %s in %s --> %p",
       obj->strtab + obj->symtab[symnum].st_name,
       obj->path, (void *)tmp);

   break;

  case 128:
   def = find_symdef(symnum, obj, &defobj, flags, cache,
       lockstate);
   if (def == ((void*)0))
    return -1;

   if (!defobj->tls_done && !allocate_tls_offset(obj))
    return -1;

   tmp = (Elf_Addr)def->st_value + defobj->tlsoffset;
   if (__predict_true(RELOC_ALIGNED_P(where)))
    *where = tmp;
   else
    store_ptr(where, tmp);
   dbg("TLS_TPOFF32 %s in %s --> %p",
       obj->strtab + obj->symtab[symnum].st_name,
       obj->path, (void *)tmp);
   break;


  default:
   dbg("sym = %lu, type = %lu, offset = %p, "
       "contents = %p, symbol = %s",
       symnum, (u_long)ELF_R_TYPE(rel->r_info),
       (void *)rel->r_offset, (void *)load_ptr(where),
       obj->strtab + obj->symtab[symnum].st_name);
   _rtld_error("%s: Unsupported relocation type %ld "
       "in non-PLT relocations\n",
       obj->path, (u_long) ELF_R_TYPE(rel->r_info));
   return -1;
 }
 return 0;
}
