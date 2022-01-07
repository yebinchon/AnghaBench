
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* e_ident; } ;
struct TYPE_5__ {int program; TYPE_2__ nlehdr; int nlfd; } ;
typedef TYPE_1__ kvm_t ;
typedef int Elf ;


 size_t EI_DATA ;


 int ELF_C_READ ;
 scalar_t__ ELF_K_ELF ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int _kvm_err (TYPE_1__*,int ,char*,...) ;
 int * elf_begin (int ,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int ) ;
 scalar_t__ elf_kind (int *) ;
 scalar_t__ elf_version (int ) ;
 int * gelf_getehdr (int *,TYPE_2__*) ;

__attribute__((used)) static int
_kvm_read_kernel_ehdr(kvm_t *kd)
{
 Elf *elf;

 if (elf_version(EV_CURRENT) == EV_NONE) {
  _kvm_err(kd, kd->program, "Unsupported libelf");
  return (-1);
 }
 elf = elf_begin(kd->nlfd, ELF_C_READ, ((void*)0));
 if (elf == ((void*)0)) {
  _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
  return (-1);
 }
 if (elf_kind(elf) != ELF_K_ELF) {
  _kvm_err(kd, kd->program, "kernel is not an ELF file");
  return (-1);
 }
 if (gelf_getehdr(elf, &kd->nlehdr) == ((void*)0)) {
  _kvm_err(kd, kd->program, "%s", elf_errmsg(0));
  elf_end(elf);
  return (-1);
 }
 elf_end(elf);

 switch (kd->nlehdr.e_ident[EI_DATA]) {
 case 129:
 case 128:
  return (0);
 default:
  _kvm_err(kd, kd->program,
      "unsupported ELF data encoding for kernel");
  return (-1);
 }
}
