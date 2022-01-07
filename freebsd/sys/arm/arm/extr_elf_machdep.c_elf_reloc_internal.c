
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linker_file_t ;
typedef int (* elf_lookup_fn ) (int ,int,int,scalar_t__*) ;
struct TYPE_4__ {scalar_t__ r_offset; int r_info; } ;
struct TYPE_3__ {scalar_t__ r_offset; scalar_t__ r_addend; int r_info; } ;
typedef int Elf_Word ;
typedef TYPE_1__ Elf_Rela ;
typedef TYPE_2__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;




 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;





 scalar_t__ elf_relocaddr (int ,scalar_t__) ;
 scalar_t__ load_ptr (scalar_t__*) ;
 int panic (char*,int) ;
 int printf (char*,...) ;
 int store_ptr (scalar_t__*,scalar_t__) ;

__attribute__((used)) static int
elf_reloc_internal(linker_file_t lf, Elf_Addr relocbase, const void *data,
    int type, int local, elf_lookup_fn lookup)
{
 Elf_Addr *where;
 Elf_Addr addr;
 Elf_Addr addend;
 Elf_Word rtype, symidx;
 const Elf_Rel *rel;
 const Elf_Rela *rela;
 int error;

 switch (type) {
 case 134:
  rel = (const Elf_Rel *)data;
  where = (Elf_Addr *) (relocbase + rel->r_offset);
  addend = load_ptr(where);
  rtype = ELF_R_TYPE(rel->r_info);
  symidx = ELF_R_SYM(rel->r_info);
  break;
 case 133:
  rela = (const Elf_Rela *)data;
  where = (Elf_Addr *) (relocbase + rela->r_offset);
  addend = rela->r_addend;
  rtype = ELF_R_TYPE(rela->r_info);
  symidx = ELF_R_SYM(rela->r_info);
  break;
 default:
  panic("unknown reloc type %d\n", type);
 }

 if (local) {
  if (rtype == 128) {
   addr = elf_relocaddr(lf, relocbase + addend);
   if (load_ptr(where) != addr)
    store_ptr(where, addr);
  }
  return (0);
 }

 switch (rtype) {

  case 129:
   break;

  case 132:
   error = lookup(lf, symidx, 1, &addr);
   if (error != 0)
    return -1;
   store_ptr(where, addr + load_ptr(where));
   break;

  case 131:




   printf("kldload: unexpected R_COPY relocation\n");
   return -1;
   break;

  case 130:
   error = lookup(lf, symidx, 1, &addr);
   if (error == 0) {
    store_ptr(where, addr);
    return (0);
   }
   return (-1);
  case 128:
   break;

  default:
   printf("kldload: unexpected relocation type %d\n",
          rtype);
   return -1;
 }
 return(0);
}
