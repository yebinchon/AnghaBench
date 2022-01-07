
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linker_file_t ;
typedef int (* elf_lookup_fn ) (int ,int,int,scalar_t__*) ;
struct TYPE_4__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_3__ {int r_info; scalar_t__ r_addend; scalar_t__ r_offset; } ;
typedef int Elf_Size ;
typedef TYPE_1__ Elf_Rela ;
typedef TYPE_2__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;
typedef scalar_t__ Elf64_Addr ;
typedef scalar_t__ Elf32_Addr ;




 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 scalar_t__ elf_relocaddr (int ,scalar_t__) ;
 int panic (char*,int) ;
 int printf (char*,...) ;
 scalar_t__ stub1 () ;

__attribute__((used)) static int
elf_reloc_internal(linker_file_t lf, Elf_Addr relocbase, const void *data,
    int type, elf_lookup_fn lookup)
{
 Elf64_Addr *where, val;
 Elf32_Addr *where32, val32;
 Elf_Addr addr;
 Elf_Addr addend;
 Elf_Size rtype, symidx;
 const Elf_Rel *rel;
 const Elf_Rela *rela;
 int error;

 switch (type) {
 case 139:
  rel = (const Elf_Rel *)data;
  where = (Elf_Addr *) (relocbase + rel->r_offset);
  rtype = ELF_R_TYPE(rel->r_info);
  symidx = ELF_R_SYM(rel->r_info);

  switch (rtype) {
  case 130:
  case 137:
  case 129:
   addend = *(Elf32_Addr *)where;
   break;
  default:
   addend = *where;
   break;
  }
  break;
 case 138:
  rela = (const Elf_Rela *)data;
  where = (Elf_Addr *) (relocbase + rela->r_offset);
  addend = rela->r_addend;
  rtype = ELF_R_TYPE(rela->r_info);
  symidx = ELF_R_SYM(rela->r_info);
  break;
 default:
  panic("unknown reloc type %d\n", type);
 }

 switch (rtype) {
  case 131:
   break;

  case 136:
   error = lookup(lf, symidx, 1, &addr);
   val = addr + addend;
   if (error != 0)
    return -1;
   if (*where != val)
    *where = val;
   break;

  case 130:
  case 129:

   error = lookup(lf, symidx, 1, &addr);
   where32 = (Elf32_Addr *)where;
   val32 = (Elf32_Addr)(addr + addend - (Elf_Addr)where);
   if (error != 0)
    return -1;
   if (*where32 != val32)
    *where32 = val32;
   break;

  case 137:
   error = lookup(lf, symidx, 1, &addr);
   val32 = (Elf32_Addr)(addr + addend);
   where32 = (Elf32_Addr *)where;
   if (error != 0)
    return -1;
   if (*where32 != val32)
    *where32 = val32;
   break;

  case 135:




   printf("kldload: unexpected R_COPY relocation\n");
   return (-1);

  case 134:
  case 132:
   error = lookup(lf, symidx, 1, &addr);
   if (error != 0)
    return -1;
   if (*where != addr)
    *where = addr;
   break;

  case 128:
   addr = elf_relocaddr(lf, relocbase + addend);
   val = addr;
   if (*where != val)
    *where = val;
   break;

  case 133:
   addr = relocbase + addend;
   val = ((Elf64_Addr (*)(void))addr)();
   if (*where != val)
    *where = val;
   break;

  default:
   printf("kldload: unexpected relocation type %ld\n",
          rtype);
   return (-1);
 }
 return (0);
}
