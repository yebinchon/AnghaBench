
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* e_ident; scalar_t__ e_machine; } ;
struct TYPE_8__ {int program; TYPE_1__ nlehdr; int pmfd; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_9__ {scalar_t__ e_type; scalar_t__ e_machine; } ;
typedef int GElf_Phdr ;
typedef TYPE_3__ GElf_Ehdr ;
typedef int Elf ;


 size_t EI_CLASS ;
 int ELF_C_READ ;
 scalar_t__ ELF_K_ELF ;
 scalar_t__ ET_CORE ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int * calloc (size_t,int) ;
 int * elf_begin (int ,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int ) ;
 int elf_getphdrnum (int *,size_t*) ;
 scalar_t__ elf_kind (int *) ;
 int free (int *) ;
 scalar_t__ gelf_getclass (int *) ;
 int * gelf_getehdr (int *,TYPE_3__*) ;
 int * gelf_getphdr (int *,size_t,int *) ;

int
_kvm_read_core_phdrs(kvm_t *kd, size_t *phnump, GElf_Phdr **phdrp)
{
 GElf_Ehdr ehdr;
 GElf_Phdr *phdr;
 Elf *elf;
 size_t i, phnum;

 elf = elf_begin(kd->pmfd, ELF_C_READ, ((void*)0));
 if (elf == ((void*)0)) {
  _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
  return (-1);
 }
 if (elf_kind(elf) != ELF_K_ELF) {
  _kvm_err(kd, kd->program, "invalid core");
  goto bad;
 }
 if (gelf_getclass(elf) != kd->nlehdr.e_ident[EI_CLASS]) {
  _kvm_err(kd, kd->program, "invalid core");
  goto bad;
 }
 if (gelf_getehdr(elf, &ehdr) == ((void*)0)) {
  _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
  goto bad;
 }
 if (ehdr.e_type != ET_CORE) {
  _kvm_err(kd, kd->program, "invalid core");
  goto bad;
 }
 if (ehdr.e_machine != kd->nlehdr.e_machine) {
  _kvm_err(kd, kd->program, "invalid core");
  goto bad;
 }

 if (elf_getphdrnum(elf, &phnum) == -1) {
  _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
  goto bad;
 }

 phdr = calloc(phnum, sizeof(*phdr));
 if (phdr == ((void*)0)) {
  _kvm_err(kd, kd->program, "failed to allocate phdrs");
  goto bad;
 }

 for (i = 0; i < phnum; i++) {
  if (gelf_getphdr(elf, i, &phdr[i]) == ((void*)0)) {
   free(phdr);
   _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
   goto bad;
  }
 }
 elf_end(elf);
 *phnump = phnum;
 *phdrp = phdr;
 return (0);

bad:
 elf_end(elf);
 return (-1);
}
