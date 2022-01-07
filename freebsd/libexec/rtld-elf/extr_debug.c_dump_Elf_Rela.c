
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_8__ {scalar_t__ r_offset; scalar_t__ r_info; } ;
struct TYPE_7__ {scalar_t__ st_size; scalar_t__ st_value; scalar_t__ st_name; } ;
struct TYPE_6__ {scalar_t__ strtab; TYPE_2__* symtab; scalar_t__ relocbase; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rela ;
typedef scalar_t__ Elf_Addr ;


 int ELF_R_SYM (scalar_t__) ;
 int rel_format ;
 int rel_header ;
 int rtld_printf (int ,scalar_t__,int,int,int,int,scalar_t__*,int) ;
 int rtld_putstr (int ) ;

void
dump_Elf_Rela (Obj_Entry *obj, const Elf_Rela *rela0, u_long relasize)
{
    const Elf_Rela *rela;
    const Elf_Rela *relalim;
    const Elf_Sym *sym;
    Elf_Addr *dstaddr;

    rtld_putstr(rel_header);
    relalim = (const Elf_Rela *)((const char *)rela0 + relasize);
    for (rela = rela0; rela < relalim; rela++) {
 dstaddr = (Elf_Addr *)(obj->relocbase + rela->r_offset);
        sym = obj->symtab + ELF_R_SYM(rela->r_info);
        rtld_printf(rel_format,
  obj->strtab + sym->st_name,
  (u_long)rela->r_info, (u_long)rela->r_offset,
  (u_long)sym->st_value, (int)sym->st_size,
  dstaddr, (u_long)*dstaddr);
    }
    return;
}
